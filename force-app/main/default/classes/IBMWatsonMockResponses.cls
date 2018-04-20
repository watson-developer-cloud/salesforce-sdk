/**
 * This class provide the mockresponses for unit tests.<br>
 * mock responses are copied from IBM Watson Api Explorer.
 */
public class IBMWatsonMockResponses {
  public static String IBMNaturalLanguageClassifierClassifyBaseURL = 
    'https://gateway.watsonplatform.net/natural-language-classifier/api/v1/classifiers/10D41B-nlc-1';
  public static String IBMNaturalLanguageClassifierClassifyURL = 
    IBMNaturalLanguageClassifierClassifyBaseURL + '/classify?text=How%20hot%20wil/10D41B-nlc-1';
    
  public static String environment() {
    return '{"environment_id": "f822208e-e4c2-45f8-a0d6-c2be950fbcc8","name": "test_environment", ' +
                        '"description": "Test environment", "created": "2016-06-16T10:56:54.957Z", ' +
                          '"updated": "2017-05-16T13:56:54.957Z", "status": "active", "read_only": false, ' +
                          '"index_capacity": {"documents": {"indexed": 0, "maximum_allowed": 1000000}, ' +
                          '"disk_usage": {"used_bytes": 0, "maximum_allowed_bytes": 99345920}}}';
  }
  public static String configuration() {
    return  '{' +
            '  "configuration_id": "448e3545-51ca-4530-a03b-6ff282ceac2e", ' +
            '  "name": "IBM News", ' +
            '  "created": "2015-08-24T18:42:25.324Z", ' +
            '  "updated": "2015-08-24T18:42:25.324Z", ' +
            '  "description": "A configuration useful for ingesting IBM press releases.", ' +
            '  "conversions": {' +
            '    "html": {' +
            '      "exclude_tags_keep_content": [' +
            '        "span"' +
            '      ], ' +
            '      "exclude_content": {' +
            '        "xpaths": [' +
            '          "/home"' +
            '        ]' +
            '      }' +
            '    }, ' +
            '    "json_normalizations": [' +
            '      {' +
            '        "operation": "move", ' +
            '        "source_field": "extracted_metadata.title", ' +
            '        "destination_field": "metadata.title"' +
            '      }, ' +
            '      {' +
            '        "operation": "move", ' +
            '        "source_field": "extracted_metadata.author", ' +
            '        "destination_field": "metadata.author"' +
            '      }, ' +
            '      {' +
            '        "operation": "remove", ' +
            '        "source_field": "extracted_metadata"' +
            '      }' +
            '    ]' +
            '  }, ' +
            '  "enrichments": [' +
            '    {' +
            '      "source_field": "text", ' +
            '      "destination_field": "alchemy_enriched_text", ' +
            '      "enrichment": "alchemy_language", ' +
            '      "options": {' +
            '        "extract": ["wert"], ' +
            '        "showSourceText": true' +
            '      }' +
            '    }, ' +
            '    {' +
            '      "source_field": "alchemy_enriched_text.text", ' +
            '      "destination_field": "sire_enriched_text", ' +
            '      "enrichment": "alchemy_language", ' +
            '      "options": {' +
            '        "extract": ["typed-rels"], ' +
            '        "model": "ie-en-news"' +
            '      }' +
            '    }' +
            '  ], ' +
            '  "normalizations": [' +
            '    {' +
            '      "operation": "move", ' +
            '      "source_field": "metadata.title", ' +
            '      "destination_field": "title"' +
            '    }, ' +
            '    {' +
            '      "operation": "move", ' +
            '      "source_field": "metadata.author", ' +
            '      "destination_field": "author"' +
            '    }, ' +
            '    {' +
            '      "operation": "move", ' +
            '      "source_field": "alchemy_enriched_text.language", ' +
            '      "destination_field": "language"' +
            '    }, ' +
            '    {' +
            '      "operation": "remove", ' +
            '      "source_field": "html"' +
            '    }, ' +
            '    {' +
            '      "operation": "remove", ' +
            '      "source_field": "alchemy_enriched_text.status"' +
            '    }, ' +
            '    {' +
            '      "operation": "remove", ' +
            '      "source_field": "alchemy_enriched_text.text"' +
            '    }, ' +
            '    {' +
            '      "operation": "remove", ' +
            '      "source_field": "sire_enriched_text.language"' +
            '    }, ' +
            '    {' +
            '      "operation": "remove", ' +
            '      "source_field": "sire_enriched_text.model"' +
            '    }, ' +
            '    {' +
            '      "operation": "remove", ' +
            '      "source_field": "sire_enriched_text.status"' +
            '    }, ' +
            '    {' +
            '      "operation": "remove_nulls"' +
            '    }' +
            '  ]' +
            '}';
  }

  public static String listConfigurationsResponse() {
    return '{' +
           ' "configurations": [' +
           '{' +
            '  "configuration_id": "448e3545-51ca-4530-a03b-6ff282ceac2e", ' +
            '  "name": "IBM News", ' +
            '  "created": "2015-08-24T18:42:25.324Z", ' +
            '  "updated": "2015-08-24T18:42:25.324Z", ' +
            '  "description": "A configuration useful for ingesting IBM press releases.", ' +
            '  "conversions": {' +
            '    "html": {' +
            '      "exclude_tags_keep_content": [' +
            '        "span"' +
            '      ], ' +
            '      "exclude_content": {' +
            '        "xpaths": [' +
            '          "/home"' +
            '        ]' +
            '      }' +
            '    }, ' +
            '    "json_normalizations": [' +
            '      {' +
            '        "operation": "move", ' +
            '        "source_field": "extracted_metadata.title", ' +
            '        "destination_field": "metadata.title"' +
            '      }, ' +
            '      {' +
            '        "operation": "move", ' +
            '        "source_field": "extracted_metadata.author", ' +
            '        "destination_field": "metadata.author"' +
            '      }, ' +
            '      {' +
            '        "operation": "remove", ' +
            '        "source_field": "extracted_metadata"' +
            '      }' +
            '    ]' +
            '  }, ' +
            '  "enrichments": [' +
            '    {' +
            '      "source_field": "text", ' +
            '      "destination_field": "alchemy_enriched_text", ' +
            '      "enrichment": "alchemy_language", ' +
            '      "options": {' +
            '        "extract": ["wert"], ' +
            '        "showSourceText": true' +
            '      }' +
            '    }, ' +
            '    {' +
            '      "source_field": "alchemy_enriched_text.text", ' +
            '      "destination_field": "sire_enriched_text", ' +
            '      "enrichment": "alchemy_language", ' +
            '      "options": {' +
            '        "extract": ["typed-rels"], ' +
            '        "model": "ie-en-news"' +
            '      }' +
            '    }' +
            '  ], ' +
            '  "normalizations": [' +
            '    {' +
            '      "operation": "move", ' +
            '      "source_field": "metadata.title", ' +
            '      "destination_field": "title"' +
            '    }, ' +
            '    {' +
            '      "operation": "move", ' +
            '      "source_field": "metadata.author", ' +
            '      "destination_field": "author"' +
            '    }, ' +
            '    {' +
            '      "operation": "move", ' +
            '      "source_field": "alchemy_enriched_text.language", ' +
            '      "destination_field": "language"' +
            '    }, ' +
            '    {' +
            '      "operation": "remove", ' +
            '      "source_field": "html"' +
            '    }, ' +
            '    {' +
            '      "operation": "remove", ' +
            '      "source_field": "alchemy_enriched_text.status"' +
            '    }, ' +
            '    {' +
            '      "operation": "remove", ' +
            '      "source_field": "alchemy_enriched_text.text"' +
            '    }, ' +
            '    {' +
            '      "operation": "remove", ' +
            '      "source_field": "sire_enriched_text.language"' +
            '    }, ' +
            '    {' +
            '      "operation": "remove", ' +
            '      "source_field": "sire_enriched_text.model"' +
            '    }, ' +
            '    {' +
            '      "operation": "remove", ' +
            '      "source_field": "sire_enriched_text.status"' +
            '    }, ' +
            '    {' +
            '      "operation": "remove_nulls"' +
            '    }' +
            '  ]' +
            '}' +
           ' ]' +
           '}';
  }

   public static String listCollectionFieldsResponse() {
    return '{' +
              '  "fields": [' +
              '    {' +
              '      "field": "warnings", ' +
              '      "type": "nested"' +
              '    }, ' +
              '    {' +
              '      "field": "warnings.properties.description", ' +
              '      "type": "string"' +
              '    }, ' +
              '    {' +
              '      "field": "warnings.properties.phase", ' +
              '      "type": "string"' +
              '    }, ' +
              '    {' +
              '      "field": "warnings.properties.warning_id", ' +
              '      "type": "string"' +
              '    }' +
              '  ]' +
              '}';
  }

  public static String listEnvironmentsResponse() {
    return '{' +
              '  "environments": [' +
              '    {' +
              '      "environment_id": "ecbda78e-fb06-40b1-a43f-a039fac0adc6", ' +
              '      "name": "byod_environment", ' +
              '      "description": "Private Data Environment", ' +
              '      "created": "2017-07-14T12:54:40.985Z", ' +
              '      "updated": "2017-07-14T12:54:40.985Z", ' +
              '      "read_only": false' +
              '    }, ' +
              '    {' +
              '      "environment_id": "system", ' +
              '      "name": "Watson System Environment", ' +
              '      "description": "Watson System environment", ' +
              '      "created": "2017-07-13T01:14:20.761Z", ' +
              '      "updated": "2017-07-13T01:14:20.761Z", ' +
              '      "read_only": true' +
              '    }' +
              '  ]' +
              '}';
  }

   public static String collection() {
    return  '{' +
            '   "collection_id": "800e58e4-198d-45eb-be87-74e1d6df4e96", ' +
            '  "name": "test-collection", ' +
            '  "configuration_id": "3c4fff84-1500-455c-b125-eaa2d319f6d3", ' +
            '  "language": "de", ' +
            '  "status": "active", ' +
            '  "description": "A test collection to show as an example", ' +
            '  "created": "2017-07-14T12:55:40.652Z", ' +
            '  "updated": "2017-07-14T12:55:40.652Z", ' +
            '  "document_counts": {' +
            '    "available": 0, ' +
            '    "processing": 0, ' +
            '    "failed": 0' +
            '  }, ' +
            '  "disk_usage": {' +
            '    "used_bytes": 260' +
            '  }, ' +
            '  "training_status": {' +
            '    "data_updated": "", ' +
            '    "total_examples": 0, ' +
            '    "sufficient_label_diversity": false, ' +
            '    "processing": false, ' +
            '    "minimum_examples_added": false, ' +
            '    "successfully_trained": "", ' +
            '    "available": false, ' +
            '    "notices": 0, ' +
            '    "minimum_queries_added": false' +
            '  }' +
            '}';
  }

  public static String collectionTrained() {
    return  '{' +
            '  "collection_id": "800e58e4-198d-45eb-be87-74e1d6df4e96", ' +
            '  "name": "test-collection", ' +
            '  "configuration_id": "3c4fff84-1500-455c-b125-eaa2d319f6d3", ' +
            '  "language": "de", ' +
            '  "status": "active", ' +
            '  "description": "A trained test collection to show as an example", ' +
            '  "created": "2017-07-14T12:55:40.652Z", ' +
            '  "updated": "2017-07-14T12:55:40.652Z", ' +
            '  "document_counts": {' +
            '    "available": 0, ' +
            '    "processing": 0, ' +
            '    "failed": 0' +
            '  }, ' +
            '  "disk_usage": {' +
            '    "used_bytes": 260' +
            '  }, ' +
            '  "training_status": {' +
            '    "data_updated": "2017-07-14T12:55:40.652Z", ' +
            '    "total_examples": 10, ' +
            '    "sufficient_label_diversity": true, ' +
            '    "processing": false, ' +
            '    "minimum_examples_added": true, ' +
            '    "successfully_trained": "2017-07-14T12:55:40.652Z", ' +
            '    "available": true, ' +
            '    "notices": 0, ' +
            '    "minimum_queries_added": true' +
            '  }' +
            '}';
  }

  public static String listCollectionsResponse() {
    return '{ "collections": [' +
           '   {' +
           '     "collection_id": "f1360220-ea2d-4271-9d62-89a910b13c37", ' +
           '     "name": "example", ' +
           '     "description": "this is a demo collection", ' +
           '     "created": "2015-08-24T18:42:25.324Z", ' +
           '     "updated": "2015-08-24T18:42:25.324Z", ' +
           '     "status": "active", ' +
           '     "configuration_id": "6963be41-2dea-4f79-8f52-127c63c479b0", ' +
           '     "language": "en"' +
           '   }' +
           ' ]' +
           '}';
  }

  public static String documentStatus() {
    return '{' +
            '  "document_id": "f1360220-ea2d-4271-9d62-89a910b13c37", ' +
            '  "configuration_id": "e8b9d793-b163-452a-9373-bce07efb510b", ' +
            '  "created": "2015-08-24T18:42:25.324Z", ' +
            '  "updated": "2015-08-24T18:42:25.324Z", ' +
            '  "status": "available with notices", ' +
            '  "status_description": "Document is successfully ingested but was indexed with warnings", ' +
            '  "filename": "instructions.html", ' +
            '  "file_type": "html", ' +
            '  "sha1": "de9f2c7fd25e1b3afad3e85a0bd17d9b100db4b3", ' +
            '  "notices": [' +
            '    {' +
            '      "notice_id": "index_342", ' +
            '      "created": "2015-08-24T18:42:25.324Z", ' +
            '      "severity": "warning", ' +
            '      "step": "indexing", ' +
            '      "description": "something bad happened", ' +
            '      "query_id": "f1360220-ea2d-4271-9d62-89a910b13c37", ' +
            '      "document_id": "f1360220-ea2d-4271-9d62-89a910b13c37"' +
            '    }' +
            '  ]' +
            '}';
  }

  public static String queryResponse() {
    return '{' +
            '  "matching_results": 24, ' +
            '  "results": [' +
            '    {' +
            '      "id": "watson-generated ID", ' +
            '      "score": 1' +
            '    }' +
            '  ], ' +
            '  "aggregations":[ {' +
            '    "term": {' +
            '      "results": [' +
            '        {' +
            '          "key": "active", ' +
            '          "matching_results": 34' +
            '        }' +
            '      ]' +
            '    }' +
            '  }]' +
            '}';
  }

  public static String queryNoticesResponse() {
    return '{' +
            '  "matching_results": 24, ' +
            '  "results": [' +
            '    {' +
            '      "id": "030ba125-29db-43f2-8552-f941ae30a7a8", ' +
            '      "collection_id": "f1360220-ea2d-4271-9d62-89a910b13c37", ' +
            '      "code": 200, ' +
            '      "score": 1, ' +
            '      "filename": "instructions.html", ' +
            '      "file_type": "html", ' +
            '      "sha1": "de9f2c7fd25e1b3afad3e85a0bd17d9b100db4b3", ' +
            '      "notices": [' +
            '        {' +
            '          "notice_id": "xpath_not_found", ' +
            '          "created": "2016-09-20T17:26:17.000Z", ' +
            '          "document_id": "030ba125-29db-43f2-8552-f941ae30a7a8", ' +
            '          "severity": "warning", ' +
            '          "step": "html-to-html", ' +
            '          "description": "The xpath expression boom was not found."' +
            '        }' +
            '      ]' +
            '    }' +
            '  ], ' +
            '  "aggregations": [{' +
            '    "term": {' +
            '      "results": [' +
            '        {' +
            '          "key": "warning", ' +
            '          "matching_results": 34' +
            '        }' +
            '      ]' +
            '    }' +
            '  }]' +
            '}';
  }

   public static String trainingQuery() {
    return  '{' +
            '  "query_id": "string", ' +
            '  "natural_language_query": "string", ' +
            '  "filter": "string", ' +
            '  "examples": [' +
            '    {' +
            '      "document_id": "string", ' +
            '      "cross_reference": "string", ' +
            '      "relevance": 0' +
            '    }' +
            '  ]' +
            '}';
  }

  public static String trainingDataSet() {
    return  '{ "queries": [{' +
            '  "query_id": "string", ' +
            '  "natural_language_query": "string", ' +
            '  "filter": "string", ' +
            '  "examples": [' +
            '    {' +
            '      "document_id": "string", ' +
            '      "cross_reference": "string", ' +
            '      "relevance": 0' +
            '    }' +
            '  ]' +
            '}]}';
  }

  public static String trainingExample() {
    return  '{' +
            '  "document_id": "string", ' +
            '  "cross_reference": "string", ' +
            '  "relevance": 2' +
            '}';
  }

  public static String workspace() {
    return '{' +
        '"name": "test_workspace", ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"language": "en", ' +
        '"metadata": {' +
        '"code": "test_code"' +
        '}, ' +
        '"updated": "2017-10-18T15:44:56.800", ' +
        '"description": "Description of test_workspace", ' +
        '"status": "Available", ' +
        '"workspace_id": "123456789", ' +
        '"learning_opt_out": false' +
        '}';
  }

  public static String workspaceExport() {
    return '{' +
        '"name": "test_workspace", ' +
        '"description": "Description of test_workspace", ' +
        '"language": "en", ' +
        '"metadata": {' +
        '"code": "test_code"' +
        '}, ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"updated": "2017-10-18T15:44:56.800", ' +
        '"workspace_id": "123456789", ' +
        '"status": "Available", ' +
        '"learning_opt_out": false, ' +
        '"intents": [' +
        '{' +
        '"intent": "test_intent", ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"updated": "2017-10-18T15:44:56.800", ' +
        '"description": "Description of test_intent", ' +
        '"examples": [' +
        '{' +
        '"text": "Example of test_intent", ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"updated": "2017-10-18T15:44:56.800"' +
        '}' +
        ']' +
        '}' +
        '], ' +
        '"entities": [' +
        '{' +
        '"entity": "test_entity", ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"updated": "2017-10-18T15:44:56.800", ' +
        '"description": "Description of test_entity", ' +
        '"values": [' +
        '{' +
        '"value": "Value of test_entity", ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"updated": "2017-10-18T15:44:56.800", ' +
        '"synonyms": [' +
        '"Synonym for value of test_entity"' +
        ']' +
        '}' +
        ']' +
        '}' +
        '], ' +
        '"counterexamples": [' +
        '{' +
        '"text": "Counterexample for test_workspace", ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"updated": "2017-10-18T15:44:56.800"' +
        '}' +
        '], ' +
        '"dialog_nodes": []' +
        '}';
  }

  public static String workspaceCollection() {
    return '{' +
        '"workspaces": [' +
        '{' +
        '"name": "test_workspace", ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"language": "en", ' +
        '"metadata": {' +
        '"code": "test_code"' +
        '}, ' +
        '"updated": "2017-10-18T15:44:56.800", ' +
        '"description": "Description of test_workspace", ' +
        '"workspace_id": "123456789", ' +
        '"learning_opt_out": false' +
        '}' +
        '], ' +
        '"pagination": {' +
        '"refresh_url": "/v1/workspaces?version=2016-01-24&page_limit=1", ' +
        '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1", ' +
        '"total": 1, ' +
        '"matched": 1' +
        '}' +
        '}';
  }

  public static String value() {
    return '{' +
        '"value": "Value of test_entity", ' +
        '"metadata": {' +
        '"code": "test_code"' +
        '}, ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"updated": "2017-10-18T15:44:56.800", ' +
        '"patterns": [' +
        '"test_pattern"' +
        '], ' +
        '"synonyms": [' +
        '"Synonym for value of test_entity"' +
        ']' +
        '}';
  }

  public static String valueCollection() {
    return '{' +
        '"values": [' +
        '{' +
        '"value": "Value of test_entity", ' +
        '"metadata": {' +
        '"code": "test_code"' +
        '}, ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"updated": "2017-10-18T15:44:56.800", ' +
        '"patterns": [' +
        '"test_pattern"' +
        '], ' +
        '"synonyms": [' +
        '"Synonym for value of test_entity"' +
        ']' +
        '}' +
        '], ' +
        '"pagination": {' +
        '"refresh_url": "/v1/workspaces?version=2016-01-24&page_limit=1", ' +
        '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1", ' +
        '"total": 1, ' +
        '"matched": 1' +
        '}' +
        '}';
  }

  public static String messageResponse() {
    return '{' +
        '"intents": [' +
        '{' +
          '"intent": "test_intent", ' +
          '"confidence": 0.314159' +
        '}' +
        '], ' +
        '"entities": [' +
        '{' +
          '"entity": "test_entity", ' +
          '"location": [' +
            '10' +
          '], ' +
          '"value": "Value of test_entity", ' +
          '"confidence": 0.314159' +
        '}' +
        '], ' +
        '"input": {' +
          '"text": "This is a message"' +
        '}, ' +
        '"alternate_intents": false, ' +
        '"context": {' +
          '"conversation_id": "0000000", ' +
          '"system": {' +
            '"dialog_turn_counter": "5"' +
          '}' +
        '}, ' +
        '"output": {' +
          '"text": [' +
            '"This is a response"' +
          '], ' +
          '"nodes_visited": [' +
            '"node_1"' +
          '], ' +
          '"log_messages": [' +
          '{' +
            '"level": "warn", ' +
            '"msg": "test_warning"' +
          '}' +
          '],' +
          '"nodes_visited_details": [' +
          '{' +
            '"dialog_node": "node",' +
            '"title": "node_title",' +
            '"conditions": "#condition"' +
          '}' +  
          ']' +
        '}' +
        '}';
  }

  public static String intent() {
    return '{' +
        '"intent": "test_intent", ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"updated": "2017-10-18T15:44:56.800", ' +
        '"description": "Description of test_intent"' +
        '}';
  }

  public static String intentExport() {
    return '{' +
        '"intent": "test_intent", ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"updated": "2017-10-18T15:44:56.800", ' +
        '"description": "Description of test_intent", ' +
        '"examples": [' +
        '{' +
          '"text": "Example of test_intent", ' +
          '"created": "2015-12-06T23:53:59.153Z", ' +
          '"updated": "2017-10-18T15:44:56.800"' +
        '}' +
        ']' +
        '}';
  }

  public static String intentCollection() {
    return '{' +
        '"intents": [' +
        '{' +
          '"intent": "test_intent", ' +
          '"created": "2015-12-06T23:53:59.153Z", ' +
          '"updated": "2017-10-18T15:44:56.800", ' +
          '"description": "Description of test_intent", ' +
          '"examples": [' +
          '{' +
            '"text": "Example of test_intent", ' +
            '"created": "2015-12-06T23:53:59.153Z", ' +
            '"updated": "2017-10-18T15:44:56.800"' +
          '}' +
          ']' +
        '}' +
        '], ' +
        '"pagination": {' +
          '"refresh_url": "/v1/workspaces?version=2016-01-24&page_limit=1", ' +
          '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1", ' +
          '"total": 1, ' +
          '"matched": 1,' +
          '"next_cursor": "next_cursor",' +
          '"refresh_cursor": "refresh_cursor"' +
        '}' +
        '}';
  }

  public static String example() {
    return '{' +
        '"text": "Example of test_intent", ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"updated": "2017-10-18T15:44:56.800"' +
        '}';
  }

  public static String exampleCollection() {
    return '{' +
        '"examples": [' +
        '{' +
          '"text": "Example of test_intent", ' +
          '"created": "2015-12-06T23:53:59.153Z", ' +
          '"updated": "2017-10-18T15:44:56.800"' +
        '}' +
        '], ' +
        '"pagination": {' +
          '"refresh_url": "/v1/workspaces?version=2016-01-24&page_limit=1", ' +
          '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1", ' +
          '"total": 1, ' +
          '"matched": 1' +
        '}' +
        '}';
  }

  public static String entity() {
    return '{' +
        '"entity": "test_entity", ' +
        '"description": "Description of test_entity", ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"updated": "2017-10-18T15:44:56.800", ' +
        '"metadata": {' +
          '"code": "test_code"' +
        '}, ' +
        '"fuzzy_match": false' +
        '}';
  }

  public static String entityExport() {
    return '{' +
        '"entity": "test_entity", ' +
        '"description": "Description of test_entity", ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"updated": "2017-10-18T15:44:56.800", ' +
        '"metadata": {' +
        '"code": "test_code"' +
        '}, ' +
        '"fuzzy_match": false, ' +
        '"values": [' +
        '{' +
          '"value": "Value of test_entity", ' +
          '"metadata": {' +
            '"code": "test_code"' +
          '}, ' +
          '"created": "2015-12-06T23:53:59.153Z", ' +
          '"updated": "2017-10-18T15:44:56.800", ' +
          '"patterns": [' +
            '"test_pattern"' +
          '], ' +
          '"synonyms": [' +
            '"Synonym for value of test_entity"' +
          ']' +
        '}' +
        ']' +
        '}';
  }

  public static String entityCollection() {
    return '{' +
        '"entities": [' +
        '{' +
          '"entity": "test_entity", ' +
          '"description": "Description of test_entity", ' +
          '"created": "2015-12-06T23:53:59.153Z", ' +
          '"updated": "2017-10-18T15:44:56.800", ' +
          '"metadata": {' +
            '"code": "test_code"' +
          '}, ' +
          '"fuzzy_match": false, ' +
          '"values": [' +
          '{' +
            '"value": "Value of test_entity", ' +
            '"metadata": {' +
            '"code": "test_code"' +
            '}, ' +
            '"created": "2015-12-06T23:53:59.153Z", ' +
            '"updated": "2017-10-18T15:44:56.800", ' +
            '"patterns": [' +
            '"test_pattern"' +
            '], ' +
            '"synonyms": [' +
            '"Synonym for value of test_entity"' +
            ']' +
          '}' +
          ']' +
        '}' +
        '], ' +
        '"pagination": {' +
          '"refresh_url": "/v1/workspaces?version=2016-01-24&page_limit=1", ' +
          '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1", ' +
          '"total": 1, ' +
          '"matched": 1' +
        '}' +
        '}';
  }

  public static String synonym() {
    return '{' +
        '"synonym": "Synonym for value of test_entity", ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"updated": "2017-10-18T15:44:56.800"' +
        '}';
  }

  public static String synonymCollection() {
    return '{' +
        '"synonyms": [' +
        '{' +
          '"synonym": "Synonym for value of test_entity", ' +
          '"created": "2015-12-06T23:53:59.153Z", ' +
          '"updated": "2017-10-18T15:44:56.800"' +
        '}' +
        '], ' +
        '"pagination": {' +
          '"refresh_url": "/v1/workspaces?version=2016-01-24&page_limit=1", ' +
          '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1", ' +
          '"total": 1, ' +
          '"matched": 1' +
        '}' +
        '}';
  }

  public static String dialogNode() {
    return '{' +
        '"dialog_node": "dialog_node", ' +
        '"description": "Description of dialog_node", ' +
        '"title": "dialog_node_title", ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"updated": "2017-10-18T15:44:56.800", ' +
        '"conditions": "#test", ' +
        '"parent": "parent", ' +
        '"previous_sibling": "sibling", ' +
        '"next_step": {' +
          '"dialog_node": "next_dialog_node", ' +
          '"behavior": "behavior", ' +
          '"selector": "body"' +
        '}, ' +
        '"output": {' +
          '"text": "output text"' +
        '}, ' +
        '"metadata": {' +
          '"code": "test_code"' +
        '}, ' +
        '"context": {' +
          '"context": "context_val"' +
        '}, ' +
        '"actions": [' +
        '{' +
          '"name": "action", ' +
          '"type": "server", ' +
          '"parameters": {' +
            '"param_1": "param_1_val"' +
          '}, ' +
          '"result_variable": "action_var", ' +
          '"credentials": "creds"' +
        '}' +
        '], ' +
        '"type": "standard", ' +
        '"event_name": "dialog_node_event", ' +
        '"variable": "dialog_node_var",' +
        '"digress_in": "returns",' +
        '"digress_out": "allow_all",' +
        '"digress_out_slots": "allow_all"' +
        '}';
  }

  public static String dialogNodeCollection() {
    return '{' +
        '"dialog_nodes": [' +
        '{' +
        '"dialog_node": "dialog_node", ' +
        '"description": "Description of dialog_node", ' +
        '"title": "dialog_node_title", ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"updated": "2017-10-18T15:44:56.800", ' +
        '"conditions": "#test", ' +
        '"parent": "parent", ' +
        '"previous_sibling": "sibling", ' +
        '"next_step": {' +
        '"dialog_node": "next_dialog_node", ' +
        '"behavior": "behavior", ' +
        '"selector": "body"' +
        '}, ' +
        '"output": {' +
        '"text": "output text"' +
        '}, ' +
        '"metadata": {' +
        '"code": "test_code"' +
        '}, ' +
        '"context": {' +
        '"context": "context_val"' +
        '}, ' +
        '"actions": [' +
        '{' +
        '"name": "action", ' +
        '"type": "server", ' +
        '"parameters": {' +
        '"param_1": "param_1_val"' +
        '}, ' +
        '"result_variable": "action_var", ' +
        '"credentials": "creds"' +
        '}' +
        '], ' +
        '"type": "standard", ' +
        '"event_name": "dialog_node_event", ' +
        '"variable": "dialog_node_var"' +
        '}' +
        '], ' +
        '"pagination": {' +
        '"refresh_url": "/v1/workspaces?version=2016-01-24&page_limit=1", ' +
        '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1", ' +
        '"total": 1, ' +
        '"matched": 1' +
        '}' +
        '}';
  }

  public static String logCollection() {
    return '{' +
        '"logs": [' +
        '{' +
          '"request": {' +
            '"input": {' +
            '"text": "This is a message"' +
            '}, ' +
            '"context": {}' +
          '}, ' +
          '"response": {' +
            '"intents": [' +
            '{' +
            '"intent": "test_intent", ' +
            '"confidence": 0.314159' +
            '}' +
            '], ' +
            '"entities": [' +
            '{' +
            '"entity": "test_entity", ' +
            '"location": [' +
              '10' +
            '], ' +
            '"value": "Value of test_entity", ' +
            '"confidence": 0.314159' +
            '}' +
            '], ' +
            '"input": {' +
            '"text": "This is a message"' +
            '}, ' +
            '"alternate_intents": false, ' +
            '"context": {' +
            '"conversation_id": "0000000", ' +
            '"system": {' +
              '"dialog_turn_counter": "5"' +
            '}' +
            '}, ' +
            '"output": {' +
            '"text": [' +
              '"This is a response"' +
            '], ' +
            '"nodes_visited": [' +
              '"node_1"' +
            '], ' +
            '"log_messages": [' +
            '{' +
              '"level": "warn", ' +
              '"msg": "test_warning"' +
            '}' +
            ']' +
            '}' +
          '}, ' +
          '"language": "en", ' +
          '"workspace_id": "123456789", ' +
          '"request_timestamp": "2017-12-06T23:53:59.153Z", ' +
          '"response_timestamp": "2017-12-06T23:54:59.153Z", ' +
          '"log_id": "987654321"' +
        '}' +
        '], ' +
        '"pagination": {' +
          '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1", ' +
          '"matched": 1,' +
          '"next_cursor": "next_cursor",' +
          '"refresh_cursor": "refresh_cursor"' +
        '}' +
      '}';
  }

  public static String counterexample() {
    return '{' +
        '"text": "Counterexample for test_workspace", ' +
        '"created": "2015-12-06T23:53:59.153Z", ' +
        '"updated": "2017-10-18T15:44:56.800"' +
        '}';
  }

  public static String counterexampleCollection() {
    return '{' +
        '"counterexamples": [' +
        '{' +
          '"text": "Counterexample for test_workspace", ' +
          '"created": "2015-12-06T23:53:59.153Z", ' +
          '"updated": "2017-10-18T15:44:56.800"' +
        '}' +
        '], ' +
        '"pagination": {' +
          '"refresh_url": "/v1/workspaces?version=2016-01-24&page_limit=1", ' +
          '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1", ' +
          '"total": 1, ' +
          '"matched": 1' +
        '}' +
        '}';
  }
  public static String documentAccepted() {
    return '{' +
            '"document_id": "f1360220-ea2d-4271-9d62-89a910b13c37", ' +
            '"status": "processing"' +
           '}';
  }
  
  public static String testDocument() {
    return  '{' +
            '  "configuration_id": "e8b9d793-b163-452a-9373-bce07efb510b", ' +
            '  "status": "completed", ' +
            '  "enriched_field_units": 5, ' +
            '  "original_media_type": "text/html", ' +
            '  "snapshots": [' +
            '    {' +
            '      "step": "html_input", ' +
            '      "snapshot": {' +
            '        "html": "<html><body>test</body></html>"' +
            '      }' +
            '    }, ' +
            '    {' +
            '      "step": "html_output", ' +
            '      "snapshot": {' +
            '        "html": "<html><body>test</body></html>"' +
            '      }' +
            '    }, ' +
            '    {' +
            '      "step": "json_output", ' +
            '      "snapshot": {' +
            '        "text": "test", ' +
            '        "html": "<html><body>test</body></html>", ' +
            '        "metadata": {' +
            '          "title": "Press Release 2014-01-09", ' +
            '          "category": "news"' +
            '        }, ' +
            '        "extracted_metadata": {' +
            '          "title": "IBM Forms New Watson Group to Meet Growing Demand for Cognitive Innovations", ' +
            '          "author": "Jake Bake"' +
            '        }' +
            '      }' +
            '    }, ' +
            '    {' +
            '      "step": "json_normalizations_output", ' +
            '      "snapshot": {' +
            '        "text": "test", ' +
            '        "html": "<html><body>test</body></html>", ' +
            '        "metadata": {' +
            '          "title": "test", ' +
            '          "author": "Jake Bake", ' +
            '          "category": "news"' +
            '        }' +
            '      }' +
            '    }, ' +
            '    {' +
            '      "step": "enrichments_output", ' +
            '      "snapshot": {' +
            '        "html": "<html><body>test</body></html>", ' +
            '        "text": "test", ' +
            '        "metadata": {' +
            '          "title": "IBM Forms New Watson Group to Meet Growing Demand for Cognitive Innovations", ' +
            '          "author": "Jake Bake", ' +
            '          "category": "news"' +
            '        }, ' +
            '        "alchemy_enriched_text": {' +
            '          "status": "OK", ' +
            '          "language": "english", ' +
            '          "text": "test", ' +
            '          "keywords": [' +
            '            {' +
            '            "relevance": 0.978167, ' +
            '            "text": "IBM Watson Group"' +
            '            }, ' +
            '            {' +
            '            "relevance": 0.432563, ' +
            '            "text": "products"' +
            '            }' +
            '          ]' +
            '        }, ' +
            '        "sire_enriched_text": {' +
            '          "status": "OK", ' +
            '          "language": "english", ' +
            '          "model": "ie-en-news", ' +
            '          "typedRelations": [' +
            '            {' +
            '            "arguments": [' +
            '              {' +
            '                "entities": [' +
            '                  {' +
            '                    "id": "-E3", ' +
            '                    "text": "Silicon Alley", ' +
            '                    "type": "GeopoliticalEntity"' +
            '                  }' +
            '                ], ' +
            '                "part": "first", ' +
            '                "text": "Silicon Alley"' +
            '              }' +
            '            ], ' +
            '            "score": "0.898437", ' +
            '            "sentence": "test", ' +
            '            "type": "locatedAt"' +
            '            }' +
            '          ]' +
            '        }' +
            '      }' +
            '    }, ' +
            '    {' +
            '     "step": "normalizations_output", ' +
            '      "snapshot": {' +
            '        "title": "IBM Forms New Watson Group to Meet Growing Demand for Cognitive Innovations", ' +
            '        "author": "Jake Bake", ' +
            '        "language": "english", ' +
            '        "text": "test", ' +
            '        "alchemy_enriched_text": {' +
            '          "keywords": [' +
            '            {' +
            '            "relevance": 0.978167, ' +
            '            "text": "IBM Watson Group"' +
            '            }, ' +
            '            {' +
            '            "relevance": 0.432563, ' +
            '            "text": "products"' +
            '            }' +
            '          ]' +
            '        }, ' +
            '        "sire_enriched_text": {' +
            '          "typedRelations": [' +
            '            {' +
            '            "arguments": [' +
            '              {' +
            '                "entities": [' +
            '                  {' +
            '                    "id": "-E3", ' +
            '                    "text": "Silicon Alley", ' +
            '                    "type": "GeopoliticalEntity"' +
            '                  }' +
            '                ], ' +
            '                "part": "first", ' +
            '                "text": "Silicon Alley"' +
            '              }' +
            '            ], ' +
            '            "score": "0.898437", ' +
            '            "sentence": "test", ' +
            '            "type": "locatedAt"' +
            '            }' +
            '          ]' +
            '        }' +
            '      }' +
            '    }' +
            '  ], ' +
            '  "notices": [' +
            '    {' +
            '      "notice_id": "xpath_not_found", ' +
            '      "severity": "warning", ' +
            '      "step": "html-to-html", ' +
            '      "description": "xpath not found"' +
            '    }' +
            '  ]' +
            '}';
  }
  
  public static String Classify() {
    return '{' +
    '  "classifier_id": "10D41B-nlc-1", ' +
    '  "url": "' +IBMNaturalLanguageClassifierClassifyURL+'", ' +
    '  "text": "How hot will it be today?", ' +
    '  "top_class": "temperature", ' +
    '  "classes": [' +
    '    {' +
    '      "class_name": "temperature", ' +
    '      "confidence": 0.9998201258549781' +
    '    }, ' +
    '    {' +
    '      "class_name": "conditions", ' +
    '      "confidence": 0.00017987414502176904' +
    '    }' +
    '  ]' +
    '}';
  }

  public static String ClassifyCollection() {
    return '{' +
    '  "classifier_id" : "10D41B-nlc-1",' +
    '  "url" : "https://gateway.watsonplatform.net/natural-language-classifier/api/v1/classifiers/10D41B-nlc-1",' +
    '  "collection" : [ {' +
    '    "text" : "How hot will it be today?",' +
    '    "top_class" : "temperature",' +
    '    "classes" : [ {' +
    '      "class_name" : "temperature",' +
    '      "confidence" : 0.9930558798985937' +
    '    }, {' +
    '      "class_name" : "conditions",' +
    '      "confidence" : 0.006944120101406304' +
    '    } ]' +
    '  }, {' +
    '    "text" : "Is it hot outside?",' +
    '    "top_class" : "temperature",' +
    '    "classes" : [ {' +
    '      "class_name" : "temperature",' +
    '      "confidence" : 1' +
    '    }, {' +
    '      "class_name" : "conditions",' +
    '      "confidence" : 0' +
    '    } ]' +
    '  } ]' +
    '}';
  }
  
  public static String CreateClassifier() {
    return '{' +
    '  "classifier_id": "10D41B-nlc-1", ' +
    '  "name": "My Classifier", ' +
    '  "language": "en", ' +
    '  "created": "2015-05-28T18:01:57.393Z", ' +
    '  "url": "' + IBMNaturalLanguageClassifierClassifyBaseURL + '", ' +
    '  "status": "Training", ' +
    '  "status_description": "The classifier instance is in its training phase, not yet ready to accept classify requests"' +
    '}';
  }
  
  public static String DeleteClassifier() {
    return '{}';
  }

  public static String getClassifier() {
    return '{' +
    '"classifier_id": "10D41B-nlc-1", ' +
    '"name": "My Classifier", ' +
    '"language": "en", ' +
    '"created": "2015-05-28T18:01:57.393Z", ' +
    '"url": "' +IBMNaturalLanguageClassifierClassifyBaseURL+'", ' +
    '"status": "Available", ' +
    '"status_description": "The classifier instance is now available and is ready to take classifier requests."' +
    '}';
  }
  
  public static String listClassifiers() {
    return '{' +
    '"classifiers": [' +
    '  {' +
    '    "classifier_id": "10D41B-nlc-1", ' +
    '    "url": "' +IBMNaturalLanguageClassifierClassifyBaseURL+'", ' +
    '    "name": "My Classifier", ' +
    '    "language": "en", ' +
    '    "created": "2015-05-28T18:01:57.393Z"' +
    '  }' +
    ' ]' +
    '}';
  }
  
  public static String analysisResults() {
    return  '{' +
            '  "entities": [' +
            '    {' +
            '      "type": "Company", ' +
            '      "relevance": 0.89792, ' +
            '      "count": 12, ' +
            '      "name": "IBM", ' +
            '      "disambiguation": {' +
            '        "name": "IBM", ' +
            '        "dbpedia_resource": "http://dbpedia.org/resource/IBM", ' +
            '        "subtype": [' +
            '          "SoftwareLicense", ' +
            '          "OperatingSystemDeveloper", ' +
            '          "ProcessorManufacturer", ' +
            '          "SoftwareDeveloper", ' +
            '          "CompanyFounder", ' +
            '          "ProgrammingLanguageDesigner", ' +
            '          "ProgrammingLanguageDeveloper"' +
            '        ]' +
            '      }, ' +
            '      "sentiment": {' +
            '        "score": 0.099437' +
            '      }, ' +
            '      "emotion": {' +
            '        "sadness": 0.271362, ' +
            '        "joy": 0.618694, ' +
            '        "fear": 0.033186, ' +
            '        "disgust": 0.056113, ' +
            '        "anger": 0.099437' +
            '      }' +
            '    }' +
            '  ], ' +
            '  "usage": { "features": 4, "text_characters": 40, "text_units": 5}, ' +
            '  "concepts":[{"text": "test", "relevance": 0.66382, "dbpedia_resource": "test"}], ' +
            '  "keywords": [' +
            '    {' +
            '      "emotion": {' +
            '        "sadness": 0.174379, ' +
            '        "joy": 0.66067, ' +
            '        "fear": 0.051475, ' +
            '        "disgust": 0.114401, ' +
            '        "anger": 0.044105' +
            '      }, ' +
            '      "relevance": "0.900808", ' +
            '      "sentiment": {' +
            '        "score": 0.419889' +
            '      }, ' +
            '      "text": "free trial"' +
            '    }' +
            '  ], ' +
            '  "categories": [{ "label": "Company", "score": 0.89792}], ' +
            '  "metadata": { "authors": [{"name": "test"}], "publication_date": "2017-05-16T13:56:54.957Z","title": "test"}, ' +
            '  "emotion": { "targets": [{"text": "test", "score": 0.89792,"emotion": {"anger": 0.099437}}], "document": {"label": "test", "score": 0.89792, "emotion": {"anger": 0.099437}}}, ' +
            '  "relations": [{ "type": "Company", "sentence": "Company", "score": 0.89792,"arguments": [{"entities": [{"text": "test","type": "Company"}],"text": "test"}]}], ' +
            '  "semantic_roles": [{ "sentence": "Company","subject": {"text": "test","entities":[{"type": "Company","text": "test"}],"keywords":[{"text": "test"}]}, "action": {"text": "test","normalized": "test","verb": {"text": "test","tense": "test"}}, "object": {"text": "test","keywords":[{"text": "test"}]}}], ' +
            '  "sentiment": { "targets": [{"text": "test", "score": 0.89792}], "document": {"label": "test", "score": 0.89792}}, ' +
            '  "language": "en", ' +
            '  "retrieved_url": "https://www.ibm.com/us-en/"' +
            '}';
  }
  
   public static String listModelsResults() {
    return  '{' +
            '  "models": [' +
            '    {' +
            '      "status": "string", ' +
            '      "model_id": "string", ' +
            '      "language": "string", ' +
            '      "description": "string"' +
            '    }' +
            '  ]' +
            '}';
  }
  
  public static String profile() {
    return  '{' +
            '  "processed_language": "ar", ' +
            '  "word_count": 0, ' +
            '  "word_count_message": "string", ' +
            '  "personality": [' +
            '    {' +
            '      "trait_id": "string", ' +
            '      "name": "string", ' +
            '      "category": "personality", ' +
            '      "percentile": 0, ' +
            '      "raw_score": 0, ' +
            '      "significant": true, ' +
            '      "children": [' +
            '        {}' +
            '      ]' +
            '    }' +
            '  ], ' +
            '  "values": [' +
            '    {' +
            '      "trait_id": "string", ' +
            '      "name": "string", ' +
            '      "category": "personality", ' +
            '      "percentile": 0, ' +
            '      "raw_score": 0, ' +
            '      "significant": true, ' +
            '      "children": [' +
            '        {}' +
            '      ]' +
            '    }' +
            '  ], ' +
            '  "needs": [' +
            '    {' +
            '      "trait_id": "string", ' +
            '      "name": "string", ' +
            '      "category": "personality", ' +
            '      "percentile": 0, ' +
            '      "raw_score": 0, ' +
            '      "significant": true, ' +
            '      "children": [' +
            '        {}' +
            '      ]' +
            '    }' +
            '  ], ' +
            '  "behavior": [' +
            '    {' +
            '      "trait_id": "string", ' +
            '      "name": "string", ' +
            '      "category": "string", ' +
            '      "percentage": 0' +
            '    }' +
            '  ], ' +
            '  "consumption_preferences": [' +
            '    {' +
            '      "consumption_preference_category_id": "string", ' +
            '      "name": "string", ' +
            '      "consumption_preferences": [' +
            '        {' +
            '          "consumption_preference_id": "string", ' +
            '          "name": "string", ' +
            '          "score": "0.0"' +
            '        }' +
            '      ]' +
            '    }' +
            '  ], ' +
            '  "warnings": [' +
            '    {' +
            '      "warning_id": "WORD_COUNT_MESSAGE", ' +
            '      "message": "string"' +
            '    }' +
            '  ]' +
            '}';
  }
  public static String toneAnalysis() {
    return  '{' +
            ' "document_tone": {' +
            ' "tones": [' +
            '   {' +
            '     "score": 0, ' +
            '     "tone_id": "string", ' +
            '     "tone_name": "string"' +
            '   }' +
            ' ], ' +
            ' "tone_categories": [' +
            '   {' +
            '     "tones": [' +
            '       {' +
            '         "score": 0, ' +
            '         "tone_id": "string", ' +
            '         "tone_name": "string"' +
            '       }' +
            '     ], ' +
            '     "category_id": "string", ' +
            '     "category_name": "string"' +
            '   }' +
            ' ], ' +
            ' "warning": "string"' +
            '  }, ' +
            '  "sentences_tone": [' +
            '    {' +
            '      "sentence_id": 0, ' +
            '      "text": "string", ' +
            '      "tones": [' +
            '        {' +
            '          "score": 0, ' +
            '          "tone_id": "string", ' +
            '          "tone_name": "string"' +
            '        }' +
            '      ], ' +
            '      "tone_categories": [' +
            '        {' +
            '          "tones": [' +
            '            {' +
            '              "score": 0, ' +
            '              "tone_id": "string", ' +
            '              "tone_name": "string"' +
            '            }' +
            '          ], ' +
            '          "category_id": "string", ' +
            '          "category_name": "string"' +
            '        }' +
            '      ], ' +
            '      "input_from": 0, ' +
            '      "input_to": 0' +
            '    }' +
            '  ]' +
            '}';
  }
  
  public static String utteranceAnalyses() {
    return  '{' +
            '  "utterances_tone": [' +
            '    {' +
            '      "utterance_id": 0, ' +
            '      "utterance_text": "string", ' +
            '      "tones": [' +
            '        {' +
            '          "score": 0, ' +
            '          "tone_id": "string", ' +
            '          "tone_name": "string"' +
            '        }' +
            '      ], ' +
            '      "error": "string"' +
            '    }' +
            '  ], ' +
            '  "warning": "string"' +
            '}';
  }
  
  public static String classifiedImages() {
    return  '{' +
                      '  "custom_classes": 0, ' +
                      '  "images_processed": 0, ' +
                      '  "images": [' +
                      '    {' +
                      '      "source_url": "string", ' +
                      '      "resolved_url": "string", ' +
                      '      "image": "string", ' +
                      '      "error": {' +
                      '        "error_id": "string", ' +
                      '        "description": "string"' +
                      '      }, ' +
                      '      "classifiers": [' +
                      '        {' +
                      '          "name": "string", ' +
                      '          "classifier_id": "string", ' +
                      '          "classes": [' +
                      '            {' +
                      '              "class": "string", ' +
                      '              "score": 0, ' +
                      '              "type_hierarchy": "string"' +
                      '            }' +
                      '          ]' +
                      '        }' +
                      '      ]' +
                      '    }' +
                      '  ], ' +
                      '  "warnings": [' +
                      '    {' +
                      '      "warning_id": "string", ' +
                      '      "description": "string"' +
                      '    }' +
                      '  ]' +
                      '}';
  }
  
  public static String detectedFaces() {
    return  '{' +
                      '  "images_processed": 0, ' +
                      '  "images": [' +
                      '    {' +
                      '      "faces": [' +
                      '        {' +
                      '          "age": {' +
                      '            "min": 0, ' +
                      '            "max": 0, ' +
                      '            "score": 0' +
                      '          }, ' +
                      '          "gender": {' +
                      '            "gender": "string", ' +
                      '            "score": 0' +
                      '          }, ' +
                      '          "face_location": {' +
                      '            "width": 0, ' +
                      '            "height": 0, ' +
                      '            "left": 0, ' +
                      '            "top": 0' +
                      '          }, ' +
                      '          "identity": {' +
                      '            "name": "string", ' +
                      '            "score": 0, ' +
                      '            "type_hierarchy": "string"' +
                      '          }' +
                      '        }' +
                      '      ], ' +
                      '      "image": "string", ' +
                      '      "source_url": "string", ' +
                      '      "resolved_url": "string", ' +
                      '      "error": {' +
                      '        "error_id": "string", ' +
                      '        "description": "string"' +
                      '      }' +
                      '    }' +
                      '  ], ' +
                      '  "warnings": [' +
                      '    {' +
                      '      "warning_id": "string", ' +
                      '      "description": "string"' +
                      '    }' +
                      '  ]' +
                      '}';
  }
    
  public static String classifiers() {
    return  '{' +
                      '  "classifiers": [' +
                      '    {' +
                      '      "classifier_id": "string", ' +
                      '      "name": "string", ' +
                      '      "owner": "string", ' +
                      '      "status": "ready", ' +
                      '      "explanation": "string", ' +
                      '      "created": "2017-12-01T17:50:28.684Z", ' +
                      '      "classes": [' +
                      '        {' +
                      '          "class": "string"' +
                      '        }' +
                      '      ]' +
                      '    }' +
                      '  ]' +
                      '}';
  }
  public static String classifier() {
    return  '{' +
            '      "classifier_id": "string", ' +
            '      "name": "string", ' +
            '      "owner": "string", ' +
            '      "status": "ready", ' +
            '      "explanation": "string", ' +
            '      "created": "2017-12-01T17:50:28.684Z", ' +
            '      "classes": [' +
            '        {' +
            '          "class": "string"' +
            '        }' +
            '      ]' +
            '}';
  }

  public static String CreateModel() {
    return '{' +
           '  "model_id": "3e7dfdbe-f757-4150-afee-458e71eb93fb"' +
           '}';
  }
  
  public static String DeleteModel() {
    return '{}';
  }
  
  public static String GetModel() {
    return '{' +
           '  "models": [{' +
           '  "model_id ": "3e7dfdbe-f757-4150-afee-458e71eb93fb", ' +
           '  "source": "en", ' +
           '  "target": "es", ' +
           '  "base_model_id": "en-es", ' +
           '  "customizable": "false", ' +
           '  "default_model": "false", ' +
           '  "domain": "travel", ' +
           '  "owner": "74a239fa-f2db-42ef-8737-7bf74f49e35f", ' +
           '  "status": "available", ' +
           '  "name": "mymodel"' +
           ' }]' +
           '}';
  }
  
  public static String ListModels() {
    return '{' +
           '  "models": [{' +
           '  "model_id ": "3e7dfdbe-f757-4150-afee-458e71eb93fb", ' +
           '  "source": "en", ' +
           '  "target": "es", ' +
           '  "base_model_id": "en-es", ' +
           //'  "customizable": "false", ' +
           //'  "default_model": "false", ' +
           '  "domain": "travel", ' +
           '  "owner": "74a239fa-f2db-42ef-8737-7bf74f49e35f", ' +
           '  "status": "available", ' +
           '  "name": "mymodel"' +
           ' }]' +
           '}';
  }
  
  public static String ListIdentifiableLanguages() {
    return '{' +
           ' "languages": [' +
           '  {' +
           '   "language": "af", ' +
           '   "name": "Afrikaans"' +
           '  }, ' +
           '  {' +
           '   "language": "ar", ' +
           '   "name": "Arabic"' +
           '  }, ' +
           '  {' +
           '   "language": "az", ' +
           '   "name": "Azerbaijani"' +
           '  }, ' +
           '  {' +
           '   "language": "ba", ' +
           '   "name": "Bashkir"' +
           '  }' +
           '  ]' +
           '}';
  }
  
  public static String Translate() {
    return '{' +
           ' "translations": [{' +
           ' "translation": "Hola"' +
           ' }], ' +
           ' "word_count": 1, ' +
           ' "character_count": 5' +
           '}';
  }
  
  public static String voices() {
    return '{' +
           ' "voices": [' +
           '   {' +
           '     "url": "string", ' +
           '     "gender": "string", ' +
           '     "name": "string", ' +
           '     "language": "string", ' +
           '     "description": "string", ' +
           '     "customizable": true, ' +
           '     "supported_features": {' +
           '       "custom_pronunciation": true, ' +
           '       "voice_transformation": true' +
           '     }, ' +
           '     "customization": {' +
           '       "customization_id": "string", ' +
           '       "name": "string", ' +
           '       "language": "string", ' +
           '       "owner": "string", ' +
           '       "created": "string", ' +
           '       "last_modified": "string", ' +
           '       "description": "string", ' +
           '       "words": [' +
           '         {' +
           '           "word": "string", ' +
           '           "translation": "string", ' +
           '           "part_of_speech": "Josi"' +
           '         }' +
           '       ]' +
           '     }' +
           '   }' +
           ' ]' +
           '}';
  }
  
  public static String voice() {
    return '{' +
           '     "url": "string", ' +
           '     "gender": "string", ' +
           '     "name": "string", ' +
           '     "language": "string", ' +
           '     "description": "string", ' +
           '     "customizable": true, ' +
           '     "supported_features": {' +
           '       "custom_pronunciation": true, ' +
           '       "voice_transformation": true' +
           '     }, ' +
           '     "customization": {' +
           '       "customization_id": "string", ' +
           '       "name": "string", ' +
           '       "language": "string", ' +
           '       "owner": "string", ' +
           '       "created": "string", ' +
           '       "last_modified": "string", ' +
           '       "description": "string", ' +
           '       "words": [' +
           '         {' +
           '           "word": "string", ' +
           '           "translation": "string", ' +
           '           "part_of_speech": "Josi"' +
           '         }' +
           '       ]' +
           '     }' +
           '}';
  }
  
  public static String pronunciation() {
    return '{' +
           '  "pronunciation": "string"' +
           '}';
  }
  
  public static String voiceModels() {
    return '{' +
           '  "customizations": [' +
           '    {' +
           '      "customization_id": "string", ' +
           '      "name": "string", ' +
           '      "language": "string", ' +
           '      "owner": "string", ' +
           '      "created": "string", ' +
           '      "last_modified": "string", ' +
           '      "description": "string", ' +
           '      "words": [' +
           '        {' +
           '          "word": "string", ' +
           '          "translation": "string", ' +
           '          "part_of_speech": "Josi"' +
           '        }' +
           '      ]' +
           '    }' +
           '  ]' +
           '}';
  }
  
  public static String voiceModel() {
    return '{' +
           '      "customization_id": "string", ' +
           '      "name": "string", ' +
           '      "language": "string", ' +
           '      "owner": "string", ' +
           '      "created": "string", ' +
           '      "last_modified": "string", ' +
           '      "description": "string", ' +
           '      "words": [' +
           '        {' +
           '          "word": "string", ' +
           '          "translation": "string", ' +
           '          "part_of_speech": "Josi"' +
           '        }' +
           '      ]' +
           '}';
  }
  
  public static String words() {
    return '{' +
           '  "words": [' +
           '    {' +
           '      "word": "string", ' +
           '      "translation": "string", ' +
           '      "part_of_speech": "Josi"' +
           '    }' +
           '  ]' +
           '}';
  }
  
  public static String word() {
    return '{' +
           '  "word": "string", ' +
           '  "translation": "string", ' +
           '  "part_of_speech": "Josi"' +
           '}';
  }

  public static String speechToTextListModels() {
    return '{' +
      ' "models": [' +
      '  {' +
      '    "name": "en-US_NarrowbandModel", ' +
      '    "language": "en-US", ' +
      '    "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/en-US_NarrowbandModel", ' +
      '    "rate": 8000, ' +
      '    "supported_features": {' +
      '      "custom_language_model": true, ' +
      '      "speaker_labels": true' +
      '    }, ' +
      '    "description": "US English narrowband model."' +
      '  }, ' +
      '  {' +
      '    "name": "es-ES_BroadbandModel", ' +
      '    "language": "es-ES", ' +
      '    "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/es-ES_BroadbandModel", ' +
      '    "rate": 16000, ' +
      '    "supported_features": {' +
      '      "custom_language_model": true, ' +
      '      "speaker_labels": true' +
      '    }, ' +
      '    "description": "Spanish broadband model."' +
      '  }, ' +
      '  {' +
      '    "name": "es-ES_NarrowbandModel", ' +
      '    "language": "es-ES", ' +
      '    "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/es-ES_NarrowbandModel", ' +
      '    "rate": 8000, ' +
      '    "supported_features": {' +
      '      "custom_language_model": true, ' +
      '      "speaker_labels": true' +
      '    }, ' +
      '    "description": "Spanish narrowband model."' +
      '  }, ' +
      '  {' +
      '    "name": "en-US_BroadbandModel", ' +
      '    "language": "en-US", ' +
      '    "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/en-US_BroadbandModel", ' +
      '    "rate": 16000, ' +
      '    "supported_features": {' +
      '      "custom_language_model": true, ' +
      '      "speaker_labels": true' +
      '    }, ' +
      '    "description": "US English broadband model."' +
      '  }' +
      ' ]' +
      '}';
  }
  
  public static String speechToTextGetModel() {
    return '{' +
     ' "name": "en-US_NarrowbandModel", ' +
     ' "language": "en-US", ' +
     ' "sessions": "https://stream.watsonplatform.net/speech-to-text/api/v1/sessions?model=en-US_NarrowbandModel", ' +
     ' "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/models/en-US_NarrowbandModel", ' +
     ' "rate": 8000, ' +
     ' "supported_features": {' +
     '   "custom_language_model": true, ' +
     '   "speaker_labels": true' +
     ' }, ' +
     ' "description": "US English narrowband model."' +
     ' }';
  }
  
  public static String speechToTextCreateJob() {
    return '{' +
      ' "created": "2017-12-13T16:11:55.815Z", ' +
      ' "id": "56d09f2c-e020-11e7-9ee3-33bf91161141", ' +
      ' "url": "https://watson-api-explorer.mybluemix.net/speech-to-text/api/v1/recognitions/56d09f2c-e020-11e7-9ee3-33bf91161141", ' +
      ' "status": "processing"' +
    '}';
  }
  
  public static String speechToTextCheckJobCreate() {
    return '{' +
           '  "id": "string", ' +
           '  "status": "waiting", ' +
           '  "created": "string", ' +
           '  "updated": "string", ' +
           '  "url": "string", ' +
           '  "user_token": "string", ' +
           '  "results": [' +
           '    {' +
           '      "results": [' +
           '        {' +
           '          "final": true, ' +
           '          "alternatives": [' +
           '            {' +
           '              "transcript": "string", ' +
           '              "confidence": 0, ' +
           '              "timestamps": [' +
           '                "string"' +
           '              ], ' +
           '              "word_confidence": [' +
           '                "string"' +
           '              ]' +
           '            }' +
           '          ], ' +
           '          "keywords_result": {' +
           '            "keyword": [' +
           '              {' +
           '                "normalized_text": "string", ' +
           '                "start_time": 0, ' +
           '                "end_time": 0, ' +
           '                "confidence": 0' +
           '              }' +
           '            ]' +
           '          }, ' +
           '          "word_alternatives": [' +
           '            {' +
           '              "start_time": 0, ' +
           '              "end_time": 0, ' +
           '              "alternatives": [' +
           '                {' +
           '                  "confidence": 0, ' +
           '                  "word": "string"' +
           '                }' +
           '              ]' +
           '            }' +
           '          ]' +
           '        }' +
           '      ], ' +
           '      "result_index": 0, ' +
           '      "speaker_labels": [' +
           '        {' +
           '          "from": 0, ' +
           '          "to": 0, ' +
           '          "speaker": 0, ' +
           '          "confidence": 0, ' +
           '          "final": true' +
           '        }' +
           '      ], ' +
           '      "warnings": [' +
           '        "string"' +
           '      ]' +
           '    }' +
           '  ], ' +
           '  "warnings": [' +
           '    "string"' +
           '  ]' +
           '}';
  }
  
  public static String speechToTextCheckJob() {
    return '{' +
      ' "created": "2017-12-13T16:11:55.815Z", ' +
      ' "id": "56d09f2c-e020-11e7-9ee3-33bf91161141", ' +
      ' "updated": "2017-12-13T16:11:57.393Z", ' +
      ' "status": "failed"' +
      '}';
  }
  
  public static String speechToTextCheckJobs() {
    return '{' +
      ' "recognitions": [' +
      ' {' +
      '   "created": "2017-12-13T16:11:55.815Z", ' +
      '   "id": "56d09f2c-e020-11e7-9ee3-33bf91161141", ' +
      '   "updated": "2017-12-13T16:11:57.393Z", ' +
      '   "status": "completed"' +
      ' }' +
    ' ]' +
    ' }';
  }
  
  public static String speechToTextDeleteJob() {
    return '{}';
  }
  
  public static String speechToTextRegisterCallback() {
    return '{' +
    ' "status": "created", ' +
    ' "url": "https://ibmdf17-watson-dxhub.my.salesforce.com/"' +
    '}';
  }
  
  public static String speechToTextUnRegisterCallback() {
    return '{}';
  }
  
  public static String speechToTextListLanguageModels() {
    return '{' +
      ' "customizations": [' +
      ' {' +
      '  "owner": "952e2069-9ece-48d8-96c9-0206b4473819", ' +
      '  "base_model_name": "en-US_BroadbandModel", ' +
      '  "customization_id": "d0bdc477-59e6-4e45-86f3-1a9a39664eb5", ' +
      '  "dialect": "en-US", ' +
      '  "created": "2017-12-11T17:50:11.862Z", ' +
      '  "name": "custom_en_US", ' +
      '  "description": "language customization", ' +
      '  "progress": 100, ' +
      '  "language": "en-US", ' +
      '  "status": "available"' +
      ' }' +
      ']' +
      '}';
  }
  
  public static String speechToTextGetLanguageModel() {
    return '{' +
      ' "owner": "952e2069-9ece-48d8-96c9-0206b4473819", ' +
      ' "base_model_name": "en-US_BroadbandModel", ' +
      ' "customization_id": "d0bdc477-59e6-4e45-86f3-1a9a39664eb5", ' +
      ' "dialect": "en-US", ' +
      ' "created": "2017-12-11T17:50:11.862Z", ' +
      ' "name": "custom_en_US", ' +
      ' "description": "language customization", ' +
      ' "progress": 100, ' +
      ' "language": "en-US", ' +
      ' "status": "available", ' +
      ' "dialect": "customization", ' +
      ' "warnings": "customization"' +
      ' }';
  }
  
  public static String speechToTextTrainLanguageModel() {
    return '{}';
  }
  
  public static String speechToTextUpgradeLanguageModel() {
    return '{}';
  }
  
  public static String speechToTextResetLanguageModel() {
    return '{}';
  }

  public static String speechToTextDeleteLanguageModel() {
    return '{}';
  }

  public static String speechToTextListCorpora() {
    return '{' +
      ' "corpora": [' +
      ' {' +
      '   "out_of_vocabulary_words": 3, ' +
      '   "total_words": 160, ' +
      '   "name": "custom_corpus", ' +
      '   "status": "analyzed"' +
      ' }' +
      ']' +
      '}';
  }

  public static String speechToTextGetCorpus() {
    return '{' +
      ' "out_of_vocabulary_words": 3, ' +
      ' "total_words": 160, ' +
      ' "name": "custom_corpus", ' +
      ' "status": "analyzed", ' +
      ' "error": "none"' +
      '}';
  }

  public static String speechToTextDeleteCorpus() {
    return '{}';
  }
  
  public static String speechToTextAddCorpus() {
    return '{}';
  }

  public static String speechToTextDeleteWord() {
    return '{}';
  }

  public static String speechToTextGetWord() {
    return '{' +
      ' "display_as": "words matter", ' +
      ' "sounds_like": [' +
      '   "words matter"' +
      ' ], ' +
      ' "count": 2, ' +
      ' "source": [' +
       '  "custom_corpus"' +
      ' ], ' +
      ' "error": [{' +
      '  "element": "custom_corpus"' +
      ' }], ' +
      ' "word": "words matter"' +
      '}';
  }
  
  public static String speechToTextListWords() {
    return '{' +
      ' "words": [' +
      ' {' +
      ' "display_as": "words matter", ' +
      ' "sounds_like": [' +
      '   "words matter"' +
      ' ], ' +
      ' "count": 2, ' +
      ' "source": [' +
      '  "custom_corpus"' +
      ' ], ' +
      ' "error": [{' +
       '  "element": "custom_corpus"' +
      ' }], ' +
      ' "word": "words matter"' +
      '}]}';
  }
  
  
  public static String speechToTextListAcousticModels() {
    return '{' +
      ' "customizations": [' +
      '   {' +
      '     "owner": "952e2069-9ece-48d8-96c9-0206b4473819", ' +
      '     "base_model_name": "en-US_BroadbandModel", ' +
      '     "customization_id": "825485d7-af3f-44e7-b1ea-76130dec8a61", ' +
      '     "created": "2017-12-11T17:57:06.654Z", ' +
      '     "name": "custom acoustic", ' +
      '     "description": "customization", ' +
      '     "progress": 0, ' +
      '     "language": "en-US", ' +
      '     "status": "ready"' +
      '   }' +
      ' ]' +
      '}';
  }
  
  public static String speechToTextGetAcousticModel() {
    return '{' +
      ' "owner": "952e2069-9ece-48d8-96c9-0206b4473819", ' +
      ' "base_model_name": "en-US_BroadbandModel", ' +
      ' "customization_id": "825485d7-af3f-44e7-b1ea-76130dec8a61", ' +
      ' "created": "2017-12-11T17:57:06.654Z", ' +
      ' "name": "custom acoustic", ' +
      ' "description": "customization", ' +
      ' "progress": 0, ' +
      ' "language": "en-US", ' +
      ' "status": "ready", ' +
      ' "warnings": "customization"' +
      '}';
  }

  public static String speechToTextDeleteAcousticModel() {
    return '{}';
  }
  
  public static String speechToTextTrainAcousticModel() {
    return '{}';
  }

  public static String speechToTextResetAcousticModel() {
    return '{}';
  }

  public static String speechToTextDeleteAudio() {
    return '{}';
  }
  
  public static String speechToTextGetAudio() {
    return '{' +
      '  "duration": 0, ' +
      '  "name": "string", ' +
      '  "details": {' +
      '   "type": "audio", ' +
      '   "codec": "string", ' +
      '   "frequency": 0, ' +
      '   "compression": "zip"' +
      '  }, ' +
      ' "status": "ok", ' +
      ' "container": ' +
      '  {' +
      '   "duration": 0, ' +
      '   "name": "string", ' +
      '   "details": {' +
      '   "type": "audio", ' +
      '   "codec": "string", ' +
      '   "frequency": 0, ' +
      '   "compression": "zip"' +
      '  }, ' +
      ' "status": "ok"' +
      ' }, ' +
      ' "audio": [' +
      '  {' +
      '   "duration": 0, ' +
      '   "name": "string", ' +
      '   "details": {' +
      '   "type": "audio", ' +
      '   "codec": "string", ' +
      '   "frequency": 0, ' +
      '   "compression": "zip"' +
      '  }, ' +
      ' "status": "ok"' +
      '}' +
      ']' +
      '}';
  }
  
  public static String speechToTextListAudio() {
    return '{}';
  }
  
  public static String speechToTextAddAudio() {
    return '{}';
  }
  
  public static String speechToTextAddWord() {
    return '{}';
  }
  
  public static String speechToTextCreateAcousticModel() {
    return '{}';
  }
  
  public static String speechToTextCreateLanguageModel() {
    return '{' +
     ' "customization_id": "74f4807e-b5ff-4866-824e-6bba1a84fe96", ' +
     ' "owner": "952e2069-9ece-48d8-96c9-0206b4473819", ' +
     ' "base_model_name": "en-US_BroadbandModel", ' +
     ' "created": "2017-12-11T17:57:06.654Z", ' +
     ' "name": "custom acoustic", ' +
     ' "description": "customization", ' +
     ' "progress": 0, ' +
     ' "language": "en-US", ' +
     ' "status": "ready", ' +
     ' "dialect": "customization", ' +
     ' "warnings": "customization"' +
     '}';
  }

  public static String speechToTextRecognize() {
    return '{' +
     ' "results": [' +
     '   {' +
     '     "word_alternatives": [' +
     '       {' +
     '         "start_time": 0.09, ' +
     '         "alternatives": [' +
     '           {' +
     '             "confidence": 1, ' +
     '             "word": "latest"' +
     '           }' +
     '         ], ' +
     '         "end_time": 0.6' +
     '       }, ' +
     '       {' +
     '         "start_time": 0.85, ' +
     '         "alternatives": [' +
     '           {' +
     '             "confidence": 0.9979, ' +
     '             "word": "report"' +
     '            }' +
     '         ], ' +
     '         "end_time": 1.52' +
     '       }' +
     '     ], ' +
     '     "keywords_result": {}, ' +
     '     "alternatives": [' +
     '       {' +
     '         "timestamps": [' +
     '           {' +
     '             "word": "the", ' +
     '             "start_time": 0.03, ' +
     '             "end_time": 0.09' +
     '           }, ' +
     '           {' +
     '             "word": "report", ' +
     '             "start_time": 0.85, ' +
     '             "end_time": 1.52' +
     '           }' +
     '         ], ' +
     '         "confidence": 0.983, ' +
     '         "transcript": "the latest weather report "' +
     '       }' +
     '     ], ' +
     '     "final": true' +
     '   }' +
     ' ], ' +
     ' "result_index": 0' +
     ' }' +
     ' {' +
     ' "results": [' +
     '   {' +
     '     "word_alternatives": [' +
     '       {' +
     '         "start_time": 0.14, ' +
     '         "alternatives": [' +
     '           {' +
     '             "confidence": 1, ' +
     '             "word": "a"' +
     '           }' +
     '         ], ' +
     '         "end_time": 0.28' +
     '       }, ' +
     '       {' +
     '         "start_time": 5.33, ' +
     '         "alternatives": [' +
     '           {' +
     '             "confidence": 0.9953, ' +
     '             "word": "Sunday"' +
     '           }' +
     '         ], ' +
     '         "end_time": 6.04' +
     '       }' +
     '     ], ' +
     '     "keywords_result": {' +
     '       "tornadoes": [' +
     '         {' +
     '           "normalized_text": "tornadoes", ' +
     '           "start_time": 3.03, ' +
     '           "confidence": 0.953, ' +
     '           "end_time": 3.85' +
     '         }' +
     '       ], ' +
     '       "colorado": [' +
     '         {' +
     '           "normalized_text": "Colorado", ' +
     '           "start_time": 4.59, ' +
     '           "confidence": 0.999, ' +
     '           "end_time": 5.18' +
     '         }' +
     '       ]' +
     '     }, ' +
     '     "alternatives": [' +
     '       {' +
     '         "timestamps": [' +
     '           [' +
     '             "a", ' +
     '             0.14, ' +
     '             0.28' +
     '           ], ' +
     '           [' +
     '             "Sunday", ' +
     '             5.33, ' +
     '             6.04' +
     '           ]' +
     '         ], ' +
     '         "confidence": 0.983, ' +
     '         "transcript": "a line of severe thunderstorms with several possible tornadoes is approaching Colorado on Sunday "' +
     '       }' +
     '     ], ' +
     '     "final": true' +
     '   }' +
     ' ], ' +
     ' "result_index": 0' +
     ' }';
  }
  
  public static String expansionsResponse() {
    return '{' +
    ' "expansions": [' +
    ' {' +
    '   "input_terms": [' +
    '     "weekday",' +
    '     "week day"' +
    '   ],' +
    '   "expanded_terms": [' +
    '     "monday",' +
    '     "tuesday",' +
    '     "wednesday",' +
    '     "thursday",' +
    '     "friday"' +
    '   ]' +
    ' },' +
    ' {' +
    '   "input_terms": [' +
    '     "weekend",' +
    '     "week end"' +
    '   ],' +
    '   "expanded_terms": [' +
    '     "saturday",' +
    '     "sunday"' +
    '   ]' +
    ' }' +
    ' ]' +
    '}';
  }
}