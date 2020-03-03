#!/usr/bin/env bash

if [ $# -eq 0 ]; then
echo "Usage: $0 -c -s [service] -u [username]";
echo "";
echo "-c          Deploy core files";
echo "-s          Service to deploy, available services are:";
echo "              * assistant"
echo "              * discovery";
echo "              * language-translator";
echo "              * natural-language-classifier";
echo "              * natural-language-understanding";
echo "              * personality-insights";
echo "              * speech-to-text";
echo "              * text-to-speech";
echo "              * tone-analyzer";
echo "              * visual-recognition";
echo "-u          Username associated with scratch org";
echo "";
echo "# Using the -c option to include the core files as part of this deployment";
echo "# by default the core files are not included";
echo "Example: $0 -c -s discovery -u myusername@organization.net"
echo "";
exit 1;
fi

echo -e "executing script..."

POSITIONAL=()

while [[ $# -gt 0 ]]
do
key="$1"

# parse arguments
case $key in
  -c|--coresdk)
  DEPLOY_CORE="Y"
  shift # past argument
  shift # past value
  ;;
  -s|--service)
  WATSON_SERVICE="$2"
  shift # past argument
  shift # past value
  ;;
  -u|--username)
  SFDX_USERNAME="$2"
  shift # past argument
  shift # past value
  ;;
  *)    # unknown option
  POSITIONAL+=("$1") # save it in an array for later
  shift # past argument
  ;;
esac
done
set -- "${POSITIONAL[@]}" # restore positional parameters

apex_classes=()
apex_classes_metadata=()

echo "loading dependencies for $WATSON_SERVICE service"
apex_classes=(`cat ../config/SFDXService/sfdx-deploy-config.json | jq --arg WATSON_SERVICE "$WATSON_SERVICE" '.watsonServices[] | select(.name == $WATSON_SERVICE).apexClasses[] | .fileName'`)
apex_classes_metadata=(`cat ../config/SFDXService/sfdx-deploy-config.json | jq --arg WATSON_SERVICE "$WATSON_SERVICE" '.watsonServices[] | select(.name == $WATSON_SERVICE).apexClasses[] | .metadata'`)

# api version
sourceApiVersion=`cat ../config/SFDXService/sfdx-deploy-config.json | jq '.sourceApiVersion'`

echo "sourceApiVersion=$sourceApiVersion"

# deploy directory
if [ ! -d ../sfdx-deploy/classes ]; then
  echo "creating deployment directory..."
  mkdir -p ../sfdx-deploy/classes;
else
  echo "cleaning deployment directory"
  rm -r ../sfdx-deploy
  mkdir -p ../sfdx-deploy/classes;
fi;

# copy core files
if [[ $DEPLOY_CORE && ${DEPLOY_CORE-x} ]]; then
for cf in ../force-app/main/default/classes/IBMWatson*; do
    cp $cf ../sfdx-deploy/classes
done
fi;

# copy apex classes for the service
for t in "${apex_classes[@]}"
do
 cp ../force-app/main/default/classes/${t//\"} ../sfdx-deploy/classes
done
# copy metadata for apex classes
for t in "${apex_classes_metadata[@]}"
do
 cp ../force-app/main/default/classes/${t//\"} ../sfdx-deploy/classes
done
cat >../sfdx-deploy/package.xml <<EOF
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Package xmlns="http://soap.sforce.com/2006/04/metadata">
    <types>
        <members>*</members>
        <name>ApexClass</name>
    </types>
    <version>${sourceApiVersion//\"}</version>
</Package>
EOF

sfdx force:config:set defaultusername=$SFDX_USERNAME
sfdx force:mdapi:deploy -d ../sfdx-deploy -w 5 -f ../sfdx-deploy/servicePackage.zip
