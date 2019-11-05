@isTest
public class IBMWatsonMockResponses {

  // --- Assistant v1 ---

  public static testMethod String assistantV1MessageResponse() {
    return '{' +
      '"intents": [' +
        '{' +
          '"intent": "intent",' +
          '"confidence": 0.5' +
        '}' +
      '],' +
      '"entities": [' +
        '{' +
          '"entity": "entity",' +
          '"location": [' +
            '10,' +
            '10' +
          '],' +
          '"value": "value",' +
          '"confidence": 0.5,' +
          '"metadata": {' +
            '"key": "value"' +
          '},' +
          '"groups": [' +
            '{' +
              '"group": "group",' +
              '"location": [' +
                '10,' +
                '10' +
              ']' +
            '}' +
          ']' +
        '}' +
      '],' +
      '"input": {' +
        '"text": "text"' +
      '},' +
      '"output": {' +
        '"generic": [' +
          '{' +
            '"response_type": "response_type",' +
            '"text": "text",' +
            '"time": 10,' +
            '"typing": true,' +
            '"source": "source",' +
            '"title": "title",' +
            '"description": "description",' +
            '"preference": "preference",' +
            '"options": [' +
              '{' +
                '"label": "label",' +
                '"value": {' +
                  '"input": {' +
                    '"text": "text"' +
                  '},' +
                  '"intents": [' +
                    '{' +
                      '"intent": "intent",' +
                      '"confidence": 0.5' +
                    '}' +
                  '],' +
                  '"entities": [' +
                    '{' +
                      '"entity": "entity",' +
                      '"location": [' +
                        '10,' +
                        '10' +
                      '],' +
                      '"value": "value",' +
                      '"confidence": 0.5,' +
                      '"metadata": {' +
                        '"key": "value"' +
                      '},' +
                      '"groups": [' +
                        '{' +
                          '"group": "group",' +
                          '"location": [' +
                            '10,' +
                            '10' +
                          ']' +
                        '}' +
                      ']' +
                    '}' +
                  ']' +
                '}' +
              '}' +
            '],' +
            '"message_to_human_agent": "message_to_human_agent",' +
            '"topic": "topic",' +
            '"dialog_node": "dialog_node",' +
            '"suggestions": [' +
              '{' +
                '"label": "label",' +
                '"dialog_node": "dialog_node",' +
                '"value": {' +
                  '"input": {' +
                    '"text": "text"' +
                  '},' +
                  '"intents": [' +
                    '{' +
                      '"intent": "intent",' +
                      '"confidence": 0.5' +
                    '}' +
                  '],' +
                  '"entities": [' +
                    '{' +
                      '"entity": "entity",' +
                      '"location": [' +
                        '10,' +
                        '10' +
                      '],' +
                      '"value": "value",' +
                      '"confidence": 0.5,' +
                      '"metadata": {' +
                        '"key": "value"' +
                      '},' +
                      '"groups": [' +
                        '{' +
                          '"group": "group",' +
                          '"location": [' +
                            '10,' +
                            '10' +
                          ']' +
                        '}' +
                      ']' +
                    '}' +
                  ']' +
                '},' +
                '"output": {' +
                  '"nodes_visited": [' +
                    '"nodes_visited"' +
                  '],' +
                  '"nodes_visited_details": [' +
                    '{' +
                      '"dialog_node": "dialog_node",' +
                      '"title": "title",' +
                      '"conditions": "conditions"' +
                    '}' +
                  '],' +
                  '"text": [' +
                    '"text"' +
                  '],' +
                  '"generic": [' +
                    '{' +
                      '"response_type": "response_type",' +
                      '"text": "text",' +
                      '"time": 10,' +
                      '"typing": true,' +
                      '"source": "source",' +
                      '"title": "title",' +
                      '"description": "description",' +
                      '"preference": "preference",' +
                      '"options": [' +
                        '{' +
                          '"label": "label",' +
                          '"value": {' +
                            '"input": {' +
                              '"text": "text"' +
                            '},' +
                            '"intents": [' +
                              '{' +
                                '"intent": "intent",' +
                                '"confidence": 0.5' +
                              '}' +
                            '],' +
                            '"entities": [' +
                              '{' +
                                '"entity": "entity",' +
                                '"location": [' +
                                  '10,' +
                                  '10' +
                                '],' +
                                '"value": "value",' +
                                '"confidence": 0.5,' +
                                '"metadata": {' +
                                  '"key": "value"' +
                                '},' +
                                '"groups": [' +
                                  '{' +
                                    '"group": "group",' +
                                    '"location": [' +
                                      '10,' +
                                      '10' +
                                    ']' +
                                  '}' +
                                ']' +
                              '}' +
                            ']' +
                          '}' +
                        '}' +
                      '],' +
                      '"message_to_human_agent": "message_to_human_agent",' +
                      '"topic": "topic",' +
                      '"dialog_node": "dialog_node"' +
                    '}' +
                  ']' +
                '}' +
              '}' +
            ']' +
          '}' +
        '],' +
        '"text": [' +
          '"text"' +
        '],' +
        '"nodes_visited": [' +
          '"nodes_visited"' +
        '],' +
        '"nodes_visited_details": [' +
          '{' +
            '"dialog_node": "dialog_node",' +
            '"title": "title",' +
            '"conditions": "conditions"' +
          '}' +
        '],' +
        '"log_messages": [' +
          '{' +
            '"level": "level",' +
            '"msg": "msg"' +
          '}' +
        ']' +
      '},' +
      '"context": {' +
        '"conversation_id": "conversation_id",' +
        '"system": {' +
          '"dialog_turn_counter": 1,' +
          '"dialog_request_counter": 1' +
        '},' +
        '"metadata": {' +
          '"deployment": "deployment",' +
          '"user_id": "user_id"' +
        '}' +
      '},' +
      '"alternate_intents": true,' +
      '"actions": [' +
        '{' +
          '"name": "name",' +
          '"type": "type",' +
          '"parameters": {' +
            '"param_1": "param_1_val"' +
          '},' +
          '"result_variable": "result_variable",' +
          '"credentials": "credentials"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String assistantV1WorkspaceCollection() {
    return '{' +
      '"workspaces": [' +
        '{' +
          '"name": "name", ' +
          '"created": "1995-06-12T01:11:11.111Z", ' +
          '"language": "language", ' +
          '"metadata": {' +
            '"code": "test_code"' +
          '}, ' +
          '"updated": "1995-06-12T01:11:11.111Z", ' +
          '"description": "description", ' +
          '"workspace_id": "workspace_id", ' +
          '"status": "status", ' +
          '"learning_opt_out": true,' +
          '"intents": [' +
            '{' +
              '"intent": "intent", ' +
              '"created": "1995-06-12T01:11:11.111Z", ' +
              '"updated": "1995-06-12T01:11:11.111Z", ' +
              '"description": "description", ' +
              '"examples": [' +
                '{' +
                  '"text": "text", ' +
                  '"mentions": [' +
                    '{' +
                      '"entity": "entity",' +
                      '"location": [' +
                        '10' +
                      ']' +
                    '}' +
                  '],' +
                  '"created": "1995-06-12T01:11:11.111Z", ' +
                  '"updated": "1995-06-12T01:11:11.111Z"' +
                '}' +
              ']' +
            '}' +
          '],' +
          '"entities": [' +
            '{' +
              '"entity": "entity", ' +
              '"description": "description", ' +
              '"created": "1995-06-12T01:11:11.111Z", ' +
              '"updated": "1995-06-12T01:11:11.111Z", ' +
              '"metadata": {' +
                '"code": "test_code"' +
              '}, ' +
              '"fuzzy_match": true, ' +
              '"values": [' +
                '{' +
                  '"value": "value", ' +
                  '"type": "type",' +
                  '"metadata": {' +
                    '"code": "test_code"' +
                  '}, ' +
                  '"created": "1995-06-12T01:11:11.111Z", ' +
                  '"updated": "1995-06-12T01:11:11.111Z", ' +
                  '"patterns": [' +
                    '"pattern"' +
                  '], ' +
                  '"synonyms": [' +
                    '"synonym"' +
                  ']' +
                '}' +
              ']' +
            '}' +
          '],' +
          '"dialog_nodes": [' +
            '{' +
              '"dialog_node": "dialog_node", ' +
              '"description": "description", ' +
              '"title": "title", ' +
              '"created": "1995-06-12T01:11:11.111Z", ' +
              '"updated": "1995-06-12T01:11:11.111Z", ' +
              '"conditions": "conditions", ' +
              '"parent": "parent", ' +
              '"previous_sibling": "previous_sibling", ' +
              '"user_label": "user_label", ' +
              '"disabled": true, ' +
              '"next_step": {' +
                '"dialog_node": "dialog_node", ' +
                '"behavior": "behavior", ' +
                '"selector": "selector"' +
              '}, ' +
              '"output": {' +
                '"generic": [' +
                  '{' +
                    '"response_type": "response_type",' +
                    '"values": [' +
                      '{' +
                        '"text": "text"' +
                      '}' +
                    '],' +
                    '"selection_policy": "selection_policy",' +
                    '"delimiter": "delimiter",' +
                    '"time": 10,' +
                    '"typing": true,' +
                    '"source": "source",' +
                    '"title": "title",' +
                    '"description": "description",' +
                    '"preference": "preference",' +
                    '"options": [' +
                      '{' +
                        '"label": "label",' +
                        '"value": {' +
                          '"input": {' +
                            '"text": "text"' +
                          '},' +
                          '"intents": [' +
                            '{' +
                              '"intent": "intent",' +
                              '"confidence": 0.5' +
                            '}' +
                          '],' +
                          '"entities": [' +
                            '{' +
                              '"entity": "entity",' +
                              '"location": [' +
                                '10,' +
                                '10' +
                              '],' +
                              '"value": "value",' +
                              '"confidence": 0.5,' +
                              '"metadata": {' +
                                '"key": "value"' +
                              '},' +
                              '"groups": [' +
                                '{' +
                                  '"group": "group",' +
                                  '"location": [' +
                                    '10,' +
                                    '10' +
                                  ']' +
                                '}' +
                              ']' +
                            '}' +
                          ']' +
                        '}' +
                      '}' +
                    '],' +
                    '"message_to_human_agent": "message_to_human_agent",' +
                    '"query": "query",' +
                    '"query_type": "query_type",' +
                    '"filter": "filter",' +
                    '"discovery_version": "discovery_version"' +
                  '}' +
                '],' +
                '"modifiers": {' +
                  '"overwrite": true' +
                '}' +
              '}, ' +
              '"metadata": {' +
                '"code": "test_code"' +
              '}, ' +
              '"context": {' +
                '"context": "context"' +
              '}, ' +
              '"actions": [' +
              '{' +
                '"name": "name", ' +
                '"type": "type", ' +
                '"parameters": {' +
                  '"param_1": "param_1_val"' +
                '}, ' +
                '"result_variable": "result_variable", ' +
                '"credentials": "credentials"' +
              '}' +
              '], ' +
              '"type": "type", ' +
              '"event_name": "event_name", ' +
              '"variable": "variable",' +
              '"digress_in": "digress_in",' +
              '"digress_out": "digress_out",' +
              '"digress_out_slots": "digress_out_slots"' +
            '}' +
          '],' +
          '"counterexamples": [' +
            '{' +
              '"text": "text", ' +
              '"created": "1995-06-12T01:11:11.111Z",' +
              '"updated": "1995-06-12T01:11:11.111Z"' +
            '}' +
          '],' +
          '"system_settings": {' +
            '"tooling": {' +
              '"store_generic_responses": true' +
            '},' +
            '"disambiguation": {' +
              '"prompt": "prompt",' +
              '"none_of_the_above_prompt": "none_of_the_above_prompt",' +
              '"enabled": true,' +
              '"sensitivity": "sensitivity"' +
            '},' +
            '"human_agent_assist": {}' +
          '}' +
        '}' +
      '],' +
      '"pagination": {' +
        '"refresh_url": "refresh_url", ' +
        '"next_url": "next_url", ' +
        '"total": 10, ' +
        '"matched": 10,' +
        '"refresh_cursor": "refresh_cursor",' +
        '"next_cursor": "next_cursor"' +
      '}' +
    '}';
  }

  public static testMethod String assistantV1Workspace() {
    return '{' +
      '"name": "name", ' +
      '"created": "1995-06-12T01:11:11.111Z", ' +
      '"language": "language", ' +
      '"metadata": {' +
        '"code": "test_code"' +
      '}, ' +
      '"updated": "1995-06-12T01:11:11.111Z", ' +
      '"description": "description", ' +
      '"workspace_id": "workspace_id", ' +
      '"status": "status", ' +
      '"learning_opt_out": true,' +
      '"intents": [' +
        '{' +
          '"intent": "intent", ' +
          '"created": "1995-06-12T01:11:11.111Z", ' +
          '"updated": "1995-06-12T01:11:11.111Z", ' +
          '"description": "description", ' +
          '"examples": [' +
            '{' +
              '"text": "text", ' +
              '"mentions": [' +
                '{' +
                  '"entity": "entity",' +
                  '"location": [' +
                    '10' +
                  ']' +
                '}' +
              '],' +
              '"created": "1995-06-12T01:11:11.111Z", ' +
              '"updated": "1995-06-12T01:11:11.111Z"' +
            '}' +
          ']' +
        '}' +
      '],' +
      '"entities": [' +
        '{' +
          '"entity": "entity", ' +
          '"description": "description", ' +
          '"created": "1995-06-12T01:11:11.111Z", ' +
          '"updated": "1995-06-12T01:11:11.111Z", ' +
          '"metadata": {' +
            '"code": "test_code"' +
          '}, ' +
          '"fuzzy_match": true, ' +
          '"values": [' +
            '{' +
              '"value": "value", ' +
              '"type": "type",' +
              '"metadata": {' +
                '"code": "test_code"' +
              '}, ' +
              '"created": "1995-06-12T01:11:11.111Z", ' +
              '"updated": "1995-06-12T01:11:11.111Z", ' +
              '"patterns": [' +
                '"pattern"' +
              '], ' +
              '"synonyms": [' +
                '"synonym"' +
              ']' +
            '}' +
          ']' +
        '}' +
      '],' +
      '"dialog_nodes": [' +
        '{' +
          '"dialog_node": "dialog_node", ' +
          '"description": "description", ' +
          '"title": "title", ' +
          '"created": "1995-06-12T01:11:11.111Z", ' +
          '"updated": "1995-06-12T01:11:11.111Z", ' +
          '"conditions": "conditions", ' +
          '"parent": "parent", ' +
          '"previous_sibling": "previous_sibling", ' +
          '"user_label": "user_label", ' +
          '"disabled": true, ' +
          '"next_step": {' +
            '"dialog_node": "dialog_node", ' +
            '"behavior": "behavior", ' +
            '"selector": "selector"' +
          '}, ' +
          '"output": {' +
            '"generic": [' +
              '{' +
                '"response_type": "response_type",' +
                '"values": [' +
                  '{' +
                    '"text": "text"' +
                  '}' +
                '],' +
                '"selection_policy": "selection_policy",' +
                '"delimiter": "delimiter",' +
                '"time": 10,' +
                '"typing": true,' +
                '"source": "source",' +
                '"title": "title",' +
                '"description": "description",' +
                '"preference": "preference",' +
                '"options": [' +
                  '{' +
                    '"label": "label",' +
                    '"value": {' +
                      '"input": {' +
                        '"text": "text"' +
                      '},' +
                      '"intents": [' +
                        '{' +
                          '"intent": "intent",' +
                          '"confidence": 0.5' +
                        '}' +
                      '],' +
                      '"entities": [' +
                        '{' +
                          '"entity": "entity",' +
                          '"location": [' +
                            '10,' +
                            '10' +
                          '],' +
                          '"value": "value",' +
                          '"confidence": 0.5,' +
                          '"metadata": {' +
                            '"key": "value"' +
                          '},' +
                          '"groups": [' +
                            '{' +
                              '"group": "group",' +
                              '"location": [' +
                                '10,' +
                                '10' +
                              ']' +
                            '}' +
                          ']' +
                        '}' +
                      ']' +
                    '}' +
                  '}' +
                '],' +
                '"message_to_human_agent": "message_to_human_agent",' +
                '"query": "query",' +
                '"query_type": "query_type",' +
                '"filter": "filter",' +
                '"discovery_version": "discovery_version"' +
              '}' +
            '],' +
            '"modifiers": {' +
              '"overwrite": true' +
            '}' +
          '}, ' +
          '"metadata": {' +
            '"code": "test_code"' +
          '}, ' +
          '"context": {' +
            '"context": "context"' +
          '}, ' +
          '"actions": [' +
          '{' +
            '"name": "name", ' +
            '"type": "type", ' +
            '"parameters": {' +
              '"param_1": "param_1_val"' +
            '}, ' +
            '"result_variable": "result_variable", ' +
            '"credentials": "credentials"' +
          '}' +
          '], ' +
          '"type": "type", ' +
          '"event_name": "event_name", ' +
          '"variable": "variable",' +
          '"digress_in": "digress_in",' +
          '"digress_out": "digress_out",' +
          '"digress_out_slots": "digress_out_slots"' +
        '}' +
      '],' +
      '"counterexamples": [' +
        '{' +
          '"text": "text", ' +
          '"created": "1995-06-12T01:11:11.111Z",' +
          '"updated": "1995-06-12T01:11:11.111Z"' +
        '}' +
      '],' +
      '"system_settings": {' +
        '"tooling": {' +
          '"store_generic_responses": true' +
        '},' +
        '"disambiguation": {' +
          '"prompt": "prompt",' +
          '"none_of_the_above_prompt": "none_of_the_above_prompt",' +
          '"enabled": true,' +
          '"sensitivity": "sensitivity"' +
        '},' +
        '"human_agent_assist": {}' +
      '}' +
    '}';
  }

  public static testMethod String assistantV1IntentCollection() {
    return '{' +
      '"intents": [' +
        '{' +
          '"intent": "intent", ' +
          '"created": "1995-06-12T01:11:11.111Z", ' +
          '"updated": "1995-06-12T01:11:11.111Z", ' +
          '"description": "description", ' +
          '"examples": [' +
            '{' +
              '"text": "text", ' +
              '"mentions": [' +
                '{' +
                  '"entity": "entity",' +
                  '"location": [' +
                    '10' +
                  ']' +
                '}' +
              '],' +
              '"created": "1995-06-12T01:11:11.111Z", ' +
              '"updated": "1995-06-12T01:11:11.111Z"' +
            '}' +
          ']' +
        '}' +
      '], ' +
      '"pagination": {' +
        '"refresh_url": "refresh_url", ' +
        '"next_url": "next_url", ' +
        '"total": 10, ' +
        '"matched": 10,' +
        '"refresh_cursor": "refresh_cursor",' +
        '"next_cursor": "next_cursor"' +
      '}' +
    '}';
  }

  public static testMethod String assistantV1Intent() {
    return '{' +
      '"intent": "intent", ' +
      '"created": "1995-06-12T01:11:11.111Z", ' +
      '"updated": "1995-06-12T01:11:11.111Z", ' +
      '"description": "description", ' +
      '"examples": [' +
        '{' +
          '"text": "text", ' +
          '"mentions": [' +
            '{' +
              '"entity": "entity",' +
              '"location": [' +
                '10' +
              ']' +
            '}' +
          '],' +
          '"created": "1995-06-12T01:11:11.111Z", ' +
          '"updated": "1995-06-12T01:11:11.111Z"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String assistantV1ExampleCollection() {
    return '{' +
      '"examples": [' +
        '{' +
          '"text": "text", ' +
          '"mentions": [' +
            '{' +
              '"entity": "entity",' +
              '"location": [' +
                '10' +
              ']' +
            '}' +
          '],' +
          '"created": "1995-06-12T01:11:11.111Z", ' +
          '"updated": "1995-06-12T01:11:11.111Z"' +
        '}' +
      '],' +
      '"pagination": {' +
        '"refresh_url": "refresh_url", ' +
        '"next_url": "next_url", ' +
        '"total": 10, ' +
        '"matched": 10,' +
        '"refresh_cursor": "refresh_cursor",' +
        '"next_cursor": "next_cursor"' +
      '}' +
    '}';
  }

  public static testMethod String assistantV1Example() {
    return '{' +
      '"text": "text", ' +
      '"mentions": [' +
        '{' +
          '"entity": "entity",' +
          '"location": [' +
            '10' +
          ']' +
        '}' +
      '],' +
      '"created": "1995-06-12T01:11:11.111Z", ' +
      '"updated": "1995-06-12T01:11:11.111Z"' +
    '}';
  }

  public static testMethod String assistantV1CounterexampleCollection() {
    return '{' +
      '"counterexamples": [' +
        '{' +
          '"text": "text", ' +
          '"created": "1995-06-12T01:11:11.111Z",' +
          '"updated": "1995-06-12T01:11:11.111Z"' +
        '}' +
      '],' +
      '"pagination": {' +
        '"refresh_url": "refresh_url", ' +
        '"next_url": "next_url", ' +
        '"total": 10, ' +
        '"matched": 10,' +
        '"refresh_cursor": "refresh_cursor",' +
        '"next_cursor": "next_cursor"' +
      '}' +
    '}';
  }

  public static testMethod String assistantV1Counterexample() {
    return '{' +
      '"text": "text", ' +
      '"created": "1995-06-12T01:11:11.111Z",' +
      '"updated": "1995-06-12T01:11:11.111Z"' +
    '}';
  }

  public static testMethod String assistantV1EntityCollection() {
    return '{' +
      '"entities": [' +
        '{' +
          '"entity": "entity", ' +
          '"description": "description", ' +
          '"created": "1995-06-12T01:11:11.111Z", ' +
          '"updated": "1995-06-12T01:11:11.111Z", ' +
          '"metadata": {' +
            '"code": "test_code"' +
          '}, ' +
          '"fuzzy_match": true, ' +
          '"values": [' +
            '{' +
              '"value": "value", ' +
              '"type": "type",' +
              '"metadata": {' +
                '"code": "test_code"' +
              '}, ' +
              '"created": "1995-06-12T01:11:11.111Z", ' +
              '"updated": "1995-06-12T01:11:11.111Z", ' +
              '"patterns": [' +
                '"pattern"' +
              '], ' +
              '"synonyms": [' +
                '"synonym"' +
              ']' +
            '}' +
          ']' +
        '}' +
      '],' +
      '"pagination": {' +
        '"refresh_url": "refresh_url", ' +
        '"next_url": "next_url", ' +
        '"total": 10, ' +
        '"matched": 10,' +
        '"refresh_cursor": "refresh_cursor",' +
        '"next_cursor": "next_cursor"' +
      '}' +
    '}';
  }

  public static testMethod String assistantV1Entity() {
    return '{' +
      '"entity": "entity", ' +
      '"description": "description", ' +
      '"created": "1995-06-12T01:11:11.111Z", ' +
      '"updated": "1995-06-12T01:11:11.111Z", ' +
      '"metadata": {' +
        '"code": "test_code"' +
      '}, ' +
      '"fuzzy_match": true, ' +
      '"values": [' +
        '{' +
          '"value": "value", ' +
          '"type": "type",' +
          '"metadata": {' +
            '"code": "test_code"' +
          '}, ' +
          '"created": "1995-06-12T01:11:11.111Z", ' +
          '"updated": "1995-06-12T01:11:11.111Z", ' +
          '"patterns": [' +
            '"pattern"' +
          '], ' +
          '"synonyms": [' +
            '"synonym"' +
          ']' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String assistantV1EntityMentionCollection() {
    return '{' +
      '"examples": [' +
        '{' +
          '"text": "text",' +
          '"intent": "intent",' +
          '"location": [' +
            '10' +
          ']' +
        '}' +
      '],' +
      '"pagination": {' +
        '"refresh_url": "refresh_url", ' +
        '"next_url": "next_url", ' +
        '"total": 10, ' +
        '"matched": 10,' +
        '"refresh_cursor": "refresh_cursor",' +
        '"next_cursor": "next_cursor"' +
      '}' +
    '}';
  }

  public static testMethod String assistantV1ValueCollection() {
    return '{' +
      '"values": [' +
        '{' +
          '"value": "value", ' +
          '"type": "type",' +
          '"metadata": {' +
            '"code": "test_code"' +
          '}, ' +
          '"created": "1995-06-12T01:11:11.111Z", ' +
          '"updated": "1995-06-12T01:11:11.111Z", ' +
          '"patterns": [' +
            '"pattern"' +
          '], ' +
          '"synonyms": [' +
            '"synonym"' +
          ']' +
        '}' +
      '],' +
      '"pagination": {' +
        '"refresh_url": "refresh_url", ' +
        '"next_url": "next_url", ' +
        '"total": 10, ' +
        '"matched": 10,' +
        '"refresh_cursor": "refresh_cursor",' +
        '"next_cursor": "next_cursor"' +
      '}' +
    '}';
  }

  public static testMethod String assistantV1Value() {
    return '{' +
      '"value": "value", ' +
      '"type": "type",' +
      '"metadata": {' +
        '"code": "test_code"' +
      '}, ' +
      '"created": "1995-06-12T01:11:11.111Z", ' +
      '"updated": "1995-06-12T01:11:11.111Z", ' +
      '"patterns": [' +
        '"pattern"' +
      '], ' +
      '"synonyms": [' +
        '"synonym"' +
      ']' +
    '}';
  }

  public static testMethod String assistantV1SynonymCollection() {
    return '{' +
      '"synonyms": [' +
        '{' +
          '"synonym": "synonym",' +
          '"created": "1995-06-12T01:11:11.111Z",' +
          '"updated": "1995-06-12T01:11:11.111Z"' +
        '}' +
      '],' +
      '"pagination": {' +
        '"refresh_url": "refresh_url", ' +
        '"next_url": "next_url", ' +
        '"total": 10, ' +
        '"matched": 10,' +
        '"refresh_cursor": "refresh_cursor",' +
        '"next_cursor": "next_cursor"' +
      '}' +
    '}';
  }

  public static testMethod String assistantV1Synonym() {
    return '{' +
      '"synonym": "synonym",' +
      '"created": "1995-06-12T01:11:11.111Z",' +
      '"updated": "1995-06-12T01:11:11.111Z"' +
    '}';
  }

  public static testMethod String assistantV1DialogNodeCollection() {
    return '{' +
      '"dialog_nodes": [' +
        '{' +
          '"dialog_node": "dialog_node", ' +
          '"description": "description", ' +
          '"title": "title", ' +
          '"created": "1995-06-12T01:11:11.111Z", ' +
          '"updated": "1995-06-12T01:11:11.111Z", ' +
          '"conditions": "conditions", ' +
          '"parent": "parent", ' +
          '"previous_sibling": "previous_sibling", ' +
          '"user_label": "user_label", ' +
          '"disabled": true, ' +
          '"next_step": {' +
            '"dialog_node": "dialog_node", ' +
            '"behavior": "behavior", ' +
            '"selector": "selector"' +
          '}, ' +
          '"output": {' +
            '"generic": [' +
              '{' +
                '"response_type": "response_type",' +
                '"values": [' +
                  '{' +
                    '"text": "text"' +
                  '}' +
                '],' +
                '"selection_policy": "selection_policy",' +
                '"delimiter": "delimiter",' +
                '"time": 10,' +
                '"typing": true,' +
                '"source": "source",' +
                '"title": "title",' +
                '"description": "description",' +
                '"preference": "preference",' +
                '"options": [' +
                  '{' +
                    '"label": "label",' +
                    '"value": {' +
                      '"input": {' +
                        '"text": "text"' +
                      '},' +
                      '"intents": [' +
                        '{' +
                          '"intent": "intent",' +
                          '"confidence": 0.5' +
                        '}' +
                      '],' +
                      '"entities": [' +
                        '{' +
                          '"entity": "entity",' +
                          '"location": [' +
                            '10,' +
                            '10' +
                          '],' +
                          '"value": "value",' +
                          '"confidence": 0.5,' +
                          '"metadata": {' +
                            '"key": "value"' +
                          '},' +
                          '"groups": [' +
                            '{' +
                              '"group": "group",' +
                              '"location": [' +
                                '10,' +
                                '10' +
                              ']' +
                            '}' +
                          ']' +
                        '}' +
                      ']' +
                    '}' +
                  '}' +
                '],' +
                '"message_to_human_agent": "message_to_human_agent",' +
                '"query": "query",' +
                '"query_type": "query_type",' +
                '"filter": "filter",' +
                '"discovery_version": "discovery_version"' +
              '}' +
            '],' +
            '"modifiers": {' +
              '"overwrite": true' +
            '}' +
          '}, ' +
          '"metadata": {' +
            '"code": "test_code"' +
          '}, ' +
          '"context": {' +
            '"context": "context"' +
          '}, ' +
          '"actions": [' +
          '{' +
            '"name": "name", ' +
            '"type": "type", ' +
            '"parameters": {' +
              '"param_1": "param_1_val"' +
            '}, ' +
            '"result_variable": "result_variable", ' +
            '"credentials": "credentials"' +
          '}' +
          '], ' +
          '"type": "type", ' +
          '"event_name": "event_name", ' +
          '"variable": "variable",' +
          '"digress_in": "digress_in",' +
          '"digress_out": "digress_out",' +
          '"digress_out_slots": "digress_out_slots"' +
        '}' +
      '],' +
      '"pagination": {' +
        '"refresh_url": "refresh_url", ' +
        '"next_url": "next_url", ' +
        '"total": 10, ' +
        '"matched": 10,' +
        '"refresh_cursor": "refresh_cursor",' +
        '"next_cursor": "next_cursor"' +
      '}' +
    '}';
  }

  public static testMethod String assistantV1DialogNode() {
    return '{' +
      '"dialog_node": "dialog_node", ' +
      '"description": "description", ' +
      '"title": "title", ' +
      '"created": "1995-06-12T01:11:11.111Z", ' +
      '"updated": "1995-06-12T01:11:11.111Z", ' +
      '"conditions": "conditions", ' +
      '"parent": "parent", ' +
      '"previous_sibling": "previous_sibling", ' +
      '"user_label": "user_label", ' +
      '"disabled": true, ' +
      '"next_step": {' +
        '"dialog_node": "dialog_node", ' +
        '"behavior": "behavior", ' +
        '"selector": "selector"' +
      '}, ' +
      '"output": {' +
        '"generic": [' +
          '{' +
            '"response_type": "response_type",' +
            '"values": [' +
              '{' +
                '"text": "text"' +
              '}' +
            '],' +
            '"selection_policy": "selection_policy",' +
            '"delimiter": "delimiter",' +
            '"time": 10,' +
            '"typing": true,' +
            '"source": "source",' +
            '"title": "title",' +
            '"description": "description",' +
            '"preference": "preference",' +
            '"options": [' +
              '{' +
                '"label": "label",' +
                '"value": {' +
                  '"input": {' +
                    '"text": "text"' +
                  '},' +
                  '"intents": [' +
                    '{' +
                      '"intent": "intent",' +
                      '"confidence": 0.5' +
                    '}' +
                  '],' +
                  '"entities": [' +
                    '{' +
                      '"entity": "entity",' +
                      '"location": [' +
                        '10,' +
                        '10' +
                      '],' +
                      '"value": "value",' +
                      '"confidence": 0.5,' +
                      '"metadata": {' +
                        '"key": "value"' +
                      '},' +
                      '"groups": [' +
                        '{' +
                          '"group": "group",' +
                          '"location": [' +
                            '10,' +
                            '10' +
                          ']' +
                        '}' +
                      ']' +
                    '}' +
                  ']' +
                '}' +
              '}' +
            '],' +
            '"message_to_human_agent": "message_to_human_agent",' +
            '"query": "query",' +
            '"query_type": "query_type",' +
            '"filter": "filter",' +
            '"discovery_version": "discovery_version"' +
          '}' +
        '],' +
        '"modifiers": {' +
          '"overwrite": true' +
        '}' +
      '}, ' +
      '"metadata": {' +
        '"code": "test_code"' +
      '}, ' +
      '"context": {' +
        '"context": "context"' +
      '}, ' +
      '"actions": [' +
      '{' +
        '"name": "name", ' +
        '"type": "type", ' +
        '"parameters": {' +
          '"param_1": "param_1_val"' +
        '}, ' +
        '"result_variable": "result_variable", ' +
        '"credentials": "credentials"' +
      '}' +
      '], ' +
      '"type": "type", ' +
      '"event_name": "event_name", ' +
      '"variable": "variable",' +
      '"digress_in": "digress_in",' +
      '"digress_out": "digress_out",' +
      '"digress_out_slots": "digress_out_slots"' +
    '}';
  }

  public static testMethod String assistantV1LogCollection() {
    return '{' +
      '"logs": [' +
        '{' +
          '"request": {' +
            '"input": {' +
              '"text": "text"' +
            '},' +
            '"intents": [' +
              '{' +
                '"intent": "intent",' +
                '"confidence": 0.5' +
              '}' +
            '],' +
            '"entities": [' +
              '{' +
                '"entity": "entity",' +
                '"location": [' +
                  '10,' +
                  '10' +
                '],' +
                '"value": "value",' +
                '"confidence": 0.5,' +
                '"metadata": {' +
                  '"key": "value"' +
                '},' +
                '"groups": [' +
                  '{' +
                    '"group": "group",' +
                    '"location": [' +
                      '10,' +
                      '10' +
                    ']' +
                  '}' +
                ']' +
              '}' +
            '],' +
            '"alternate_intents": true,' +
            '"context": {' +
              '"conversation_id": "conversation_id",' +
              '"system": {' +
                '"dialog_turn_counter": 1,' +
                '"dialog_request_counter": 1' +
              '},' +
              '"metadata": {' +
                '"deployment": "deployment",' +
                '"user_id": "user_id"' +
              '}' +
            '},' +
            '"output": {' +
              '"generic": [' +
                '{' +
                  '"response_type": "response_type",' +
                  '"text": "text",' +
                  '"time": 10,' +
                  '"typing": true,' +
                  '"source": "source",' +
                  '"title": "title",' +
                  '"description": "description",' +
                  '"preference": "preference",' +
                  '"options": [' +
                    '{' +
                      '"label": "label",' +
                      '"value": {' +
                        '"input": {' +
                          '"text": "text"' +
                        '},' +
                        '"intents": [' +
                          '{' +
                            '"intent": "intent",' +
                            '"confidence": 0.5' +
                          '}' +
                        '],' +
                        '"entities": [' +
                          '{' +
                            '"entity": "entity",' +
                            '"location": [' +
                              '10,' +
                              '10' +
                            '],' +
                            '"value": "value",' +
                            '"confidence": 0.5,' +
                            '"metadata": {' +
                              '"key": "value"' +
                            '},' +
                            '"groups": [' +
                              '{' +
                                '"group": "group",' +
                                '"location": [' +
                                  '10,' +
                                  '10' +
                                ']' +
                              '}' +
                            ']' +
                          '}' +
                        ']' +
                      '}' +
                    '}' +
                  '],' +
                  '"message_to_human_agent": "message_to_human_agent",' +
                  '"topic": "topic",' +
                  '"dialog_node": "dialog_node",' +
                  '"suggestions": [' +
                    '{' +
                      '"label": "label",' +
                      '"dialog_node": "dialog_node",' +
                      '"value": {' +
                        '"input": {' +
                          '"text": "text"' +
                        '},' +
                        '"intents": [' +
                          '{' +
                            '"intent": "intent",' +
                            '"confidence": 0.5' +
                          '}' +
                        '],' +
                        '"entities": [' +
                          '{' +
                            '"entity": "entity",' +
                            '"location": [' +
                              '10,' +
                              '10' +
                            '],' +
                            '"value": "value",' +
                            '"confidence": 0.5,' +
                            '"metadata": {' +
                              '"key": "value"' +
                            '},' +
                            '"groups": [' +
                              '{' +
                                '"group": "group",' +
                                '"location": [' +
                                  '10,' +
                                  '10' +
                                ']' +
                              '}' +
                            ']' +
                          '}' +
                        ']' +
                      '},' +
                      '"output": {' +
                        '"nodes_visited": [' +
                          '"nodes_visited"' +
                        '],' +
                        '"nodes_visited_details": [' +
                          '{' +
                            '"dialog_node": "dialog_node",' +
                            '"title": "title",' +
                            '"conditions": "conditions"' +
                          '}' +
                        '],' +
                        '"text": [' +
                          '"text"' +
                        '],' +
                        '"generic": [' +
                          '{' +
                            '"response_type": "response_type",' +
                            '"text": "text",' +
                            '"time": 10,' +
                            '"typing": true,' +
                            '"source": "source",' +
                            '"title": "title",' +
                            '"description": "description",' +
                            '"preference": "preference",' +
                            '"options": [' +
                              '{' +
                                '"label": "label",' +
                                '"value": {' +
                                  '"input": {' +
                                    '"text": "text"' +
                                  '},' +
                                  '"intents": [' +
                                    '{' +
                                      '"intent": "intent",' +
                                      '"confidence": 0.5' +
                                    '}' +
                                  '],' +
                                  '"entities": [' +
                                    '{' +
                                      '"entity": "entity",' +
                                      '"location": [' +
                                        '10,' +
                                        '10' +
                                      '],' +
                                      '"value": "value",' +
                                      '"confidence": 0.5,' +
                                      '"metadata": {' +
                                        '"key": "value"' +
                                      '},' +
                                      '"groups": [' +
                                        '{' +
                                          '"group": "group",' +
                                          '"location": [' +
                                            '10,' +
                                            '10' +
                                          ']' +
                                        '}' +
                                      ']' +
                                    '}' +
                                  ']' +
                                '}' +
                              '}' +
                            '],' +
                            '"message_to_human_agent": "message_to_human_agent",' +
                            '"topic": "topic",' +
                            '"dialog_node": "dialog_node"' +
                          '}' +
                        ']' +
                      '}' +
                    '}' +
                  ']' +
                '}' +
              '],' +
              '"text": [' +
                '"text"' +
              '],' +
              '"nodes_visited": [' +
                '"nodes_visited"' +
              '],' +
              '"nodes_visited_details": [' +
                '{' +
                  '"dialog_node": "dialog_node",' +
                  '"title": "title",' +
                  '"conditions": "conditions"' +
                '}' +
              '],' +
              '"log_messages": [' +
                '{' +
                  '"level": "level",' +
                  '"msg": "msg"' +
                '}' +
              ']' +
            '},' +
            '"actions": [' +
              '{' +
                '"name": "name",' +
                '"type": "type",' +
                '"parameters": {' +
                  '"param_1": "param_1_val"' +
                '},' +
                '"result_variable": "result_variable",' +
                '"credentials": "credentials"' +
              '}' +
            ']' +
          '}, ' +
          '"response": {' +
            '"intents": [' +
              '{' +
                '"intent": "intent",' +
                '"confidence": 0.5' +
              '}' +
            '],' +
            '"entities": [' +
              '{' +
                '"entity": "entity",' +
                '"location": [' +
                  '10,' +
                  '10' +
                '],' +
                '"value": "value",' +
                '"confidence": 0.5,' +
                '"metadata": {' +
                  '"key": "value"' +
                '},' +
                '"groups": [' +
                  '{' +
                    '"group": "group",' +
                    '"location": [' +
                      '10,' +
                      '10' +
                    ']' +
                  '}' +
                ']' +
              '}' +
            '],' +
            '"input": {' +
              '"text": "text"' +
            '},' +
            '"output": {' +
              '"generic": [' +
                '{' +
                  '"response_type": "response_type",' +
                  '"text": "text",' +
                  '"time": 10,' +
                  '"typing": true,' +
                  '"source": "source",' +
                  '"title": "title",' +
                  '"description": "description",' +
                  '"preference": "preference",' +
                  '"options": [' +
                    '{' +
                      '"label": "label",' +
                      '"value": {' +
                        '"input": {' +
                          '"text": "text"' +
                        '},' +
                        '"intents": [' +
                          '{' +
                            '"intent": "intent",' +
                            '"confidence": 0.5' +
                          '}' +
                        '],' +
                        '"entities": [' +
                          '{' +
                            '"entity": "entity",' +
                            '"location": [' +
                              '10,' +
                              '10' +
                            '],' +
                            '"value": "value",' +
                            '"confidence": 0.5,' +
                            '"metadata": {' +
                              '"key": "value"' +
                            '},' +
                            '"groups": [' +
                              '{' +
                                '"group": "group",' +
                                '"location": [' +
                                  '10,' +
                                  '10' +
                                ']' +
                              '}' +
                            ']' +
                          '}' +
                        ']' +
                      '}' +
                    '}' +
                  '],' +
                  '"message_to_human_agent": "message_to_human_agent",' +
                  '"topic": "topic",' +
                  '"dialog_node": "dialog_node",' +
                  '"suggestions": [' +
                    '{' +
                      '"label": "label",' +
                      '"dialog_node": "dialog_node",' +
                      '"value": {' +
                        '"input": {' +
                          '"text": "text"' +
                        '},' +
                        '"intents": [' +
                          '{' +
                            '"intent": "intent",' +
                            '"confidence": 0.5' +
                          '}' +
                        '],' +
                        '"entities": [' +
                          '{' +
                            '"entity": "entity",' +
                            '"location": [' +
                              '10,' +
                              '10' +
                            '],' +
                            '"value": "value",' +
                            '"confidence": 0.5,' +
                            '"metadata": {' +
                              '"key": "value"' +
                            '},' +
                            '"groups": [' +
                              '{' +
                                '"group": "group",' +
                                '"location": [' +
                                  '10,' +
                                  '10' +
                                ']' +
                              '}' +
                            ']' +
                          '}' +
                        ']' +
                      '},' +
                      '"output": {' +
                        '"nodes_visited": [' +
                          '"nodes_visited"' +
                        '],' +
                        '"nodes_visited_details": [' +
                          '{' +
                            '"dialog_node": "dialog_node",' +
                            '"title": "title",' +
                            '"conditions": "conditions"' +
                          '}' +
                        '],' +
                        '"text": [' +
                          '"text"' +
                        '],' +
                        '"generic": [' +
                          '{' +
                            '"response_type": "response_type",' +
                            '"text": "text",' +
                            '"time": 10,' +
                            '"typing": true,' +
                            '"source": "source",' +
                            '"title": "title",' +
                            '"description": "description",' +
                            '"preference": "preference",' +
                            '"options": [' +
                              '{' +
                                '"label": "label",' +
                                '"value": {' +
                                  '"input": {' +
                                    '"text": "text"' +
                                  '},' +
                                  '"intents": [' +
                                    '{' +
                                      '"intent": "intent",' +
                                      '"confidence": 0.5' +
                                    '}' +
                                  '],' +
                                  '"entities": [' +
                                    '{' +
                                      '"entity": "entity",' +
                                      '"location": [' +
                                        '10,' +
                                        '10' +
                                      '],' +
                                      '"value": "value",' +
                                      '"confidence": 0.5,' +
                                      '"metadata": {' +
                                        '"key": "value"' +
                                      '},' +
                                      '"groups": [' +
                                        '{' +
                                          '"group": "group",' +
                                          '"location": [' +
                                            '10,' +
                                            '10' +
                                          ']' +
                                        '}' +
                                      ']' +
                                    '}' +
                                  ']' +
                                '}' +
                              '}' +
                            '],' +
                            '"message_to_human_agent": "message_to_human_agent",' +
                            '"topic": "topic",' +
                            '"dialog_node": "dialog_node"' +
                          '}' +
                        ']' +
                      '}' +
                    '}' +
                  ']' +
                '}' +
              '],' +
              '"text": [' +
                '"text"' +
              '],' +
              '"nodes_visited": [' +
                '"nodes_visited"' +
              '],' +
              '"nodes_visited_details": [' +
                '{' +
                  '"dialog_node": "dialog_node",' +
                  '"title": "title",' +
                  '"conditions": "conditions"' +
                '}' +
              '],' +
              '"log_messages": [' +
                '{' +
                  '"level": "level",' +
                  '"msg": "msg"' +
                '}' +
              ']' +
            '},' +
            '"context": {' +
              '"conversation_id": "conversation_id",' +
              '"system": {' +
                '"dialog_turn_counter": 1,' +
                '"dialog_request_counter": 1' +
              '},' +
              '"metadata": {' +
                '"deployment": "deployment",' +
                '"user_id": "user_id"' +
              '}' +
            '},' +
            '"alternate_intents": true,' +
            '"actions": [' +
              '{' +
                '"name": "name",' +
                '"type": "type",' +
                '"parameters": {' +
                  '"param_1": "param_1_val"' +
                '},' +
                '"result_variable": "result_variable",' +
                '"credentials": "credentials"' +
              '}' +
            ']' +
          '}, ' +
          '"language": "language", ' +
          '"workspace_id": "workspace_id", ' +
          '"request_timestamp": "request_timestamp", ' +
          '"response_timestamp": "response_timestamp", ' +
          '"log_id": "log_id"' +
        '}' +
      '], ' +
      '"pagination": {' +
        '"refresh_url": "refresh_url", ' +
        '"next_url": "next_url", ' +
        '"total": 10, ' +
        '"matched": 10,' +
        '"refresh_cursor": "refresh_cursor",' +
        '"next_cursor": "next_cursor"' +
      '}' +
    '}';
  }


  // --- Assistant v2 ---

  public static testMethod String assistantV2SessionResponse() {
    return '{' +
      '"session_id": "session_id"' +
    '}';
  }

  public static testMethod String assistantV2MessageResponse() {
    return '{' +
      '"context": {' +
        '"global": {' +
          '"system": {' +
            '"timezone": "timezone",' +
            '"user_id": "user_id",' +
            '"turn_count": 10' +
          '}' +
        '},' +
        '"skills": {' +
          '"main skill": {' +
            '"skill_key": "skill_var"' +
          '}' +
        '}' +
      '},' +
      '"output": {' +
        '"generic": [' +
          '{' +
            '"response_type": "response_type",' +
            '"text": "text",' +
            '"time": 10,' +
            '"typing": true,' +
            '"source": "source",' +
            '"title": "title",' +
            '"description": "description",' +
            '"preference": "preference",' +
            '"header": "header",' +
            '"options": [' +
              '{' +
                '"label": "label",' +
                '"value": {' +
                  '"input": {' +
                    '"message_type": "message_type",' +
                    '"text": "text",' +
                    '"options": {' +
                      '"debug": true,' +
                      '"restart": true,' +
                      '"alternate_intents": true,' +
                      '"return_context": true' +
                    '},' +
                    '"intents": [' +
                      '{' +
                        '"intent": "intent",' +
                        '"confidence": 0.5' +
                      '}' +
                    '],' +
                    '"entities": [' +
                      '{' +
                        '"entity": "entity",' +
                        '"location": [' +
                          '10,' +
                          '10' +
                        '],' +
                        '"value": "value",' +
                        '"confidence": 0.5,' +
                        '"metadata": {' +
                          '"key": "value"' +
                        '},' +
                        '"groups": [' +
                          '{' +
                            '"group": "group",' +
                            '"location": [' +
                              '10,' +
                              '10' +
                            ']' +
                          '}' +
                        ']' +
                      '}' +
                    '],' +
                    '"suggestion_id": "suggestion_id"' +
                  '}' +
                '}' +
              '}' +
            '],' +
            '"message_to_human_agent": "message_to_human_agent",' +
            '"topic": "topic",' +
            '"suggestions": [' +
              '{' +
                '"label": "label",' +
                '"value": {' +
                  '"input": {' +
                    '"message_type": "message_type",' +
                    '"text": "text",' +
                    '"options": {' +
                      '"debug": true,' +
                      '"restart": true,' +
                      '"alternate_intents": true,' +
                      '"return_context": true' +
                    '},' +
                    '"intents": [' +
                      '{' +
                        '"intent": "intent",' +
                        '"confidence": 0.5' +
                      '}' +
                    '],' +
                    '"entities": [' +
                      '{' +
                        '"entity": "entity",' +
                        '"location": [' +
                          '10,' +
                          '10' +
                        '],' +
                        '"value": "value",' +
                        '"confidence": 0.5,' +
                        '"metadata": {' +
                          '"key": "value"' +
                        '},' +
                        '"groups": [' +
                          '{' +
                            '"group": "group",' +
                            '"location": [' +
                              '10,' +
                              '10' +
                            ']' +
                          '}' +
                        ']' +
                      '}' +
                    '],' +
                    '"suggestion_id": "suggestion_id"' +
                  '}' +
                '},' +
                '"output": {' +
                  '"key": "value"' +
                '}' +
              '}' +
            '],' +
            '"results": [' +
              '{' +
                '"id": "id",' +
                '"body": "body",' +
                '"title": "title",' +
                '"url": "url",' +
                '"result_metadata": {' +
                  '"confidence": 0.5,' +
                  '"score": 0.5' +
                '},' +
                '"highlight" : {' +
                  '"body": [' +
                    '"body"' +
                  '],' +
                  '"title": [' +
                    '"title"' +
                  '],' +
                  '"url": [' +
                    '"url"' +
                  ']' +
                '}' +
              '}' +
            ']' +
          '}' +
        '],' +
        '"intents": [' +
          '{' +
            '"intent": "intent",' +
            '"confidence": 0.5' +
          '}' +
        '],' +
        '"entities": [' +
          '{' +
            '"entity": "entity",' +
            '"location": [' +
              '10,' +
              '10' +
            '],' +
            '"value": "value",' +
            '"confidence": 0.5,' +
            '"metadata": {' +
              '"key": "value"' +
            '},' +
            '"groups": [' +
              '{' +
                '"group": "group",' +
                '"location": [' +
                  '10,' +
                  '10' +
                ']' +
              '}' +
            ']' +
          '}' +
        '],' +
        '"actions": [' +
          '{' +
            '"name": "name",' +
            '"type": "type",' +
            '"parameters": {' +
              '"key": "value"' +
            '},' +
            '"result_variable": "result_variable",' +
            '"credentials": "credentials"' +
          '}' +
        '],' +
        '"debug": {' +
          '"nodes_visited": [' +
            '{' +
              '"dialog_node": "dialog_node",' +
              '"title": "title",' +
              '"conditions": "conditions"' +
            '}' +
          '],' +
          '"log_messages": [' +
            '{' +
              '"level": "level",' +
              '"message": "message"' +
            '}' +
          '],' +
          '"branch_exited": true,' +
          '"branch_exited_reason": "branch_exited_reason"' +
        '}' +
      '}' +
    '}';
  }


  // --- Compare and Comply v1 ---

  public static testMethod String compareComplyV1BatchStatus() {
    return '{' +
      '"function": "function",' +
      '"input_bucket_location": "input_bucket_location",' +
      '"input_bucket_name": "input_bucket_name",' +
      '"output_bucket_location": "output_bucket_location",' +
      '"output_bucket_name": "output_bucket_name",' +
      '"batch_id": "batch_id",' +
      '"document_counts": {' +
        '"total": 10,' +
        '"pending": 10,' +
        '"successful": 10,' +
        '"failed": 10' +
      '},' +
      '"status": "status",' +
      '"created": "1995-06-12T01:11:11.111Z",' +
      '"updated": "1995-06-12T01:11:11.111Z"' +
    '}';
  }

  public static testMethod String compareComplyV1Batches() {
    return '{' +
      '"batches": [' +
        '{' +
          '"function": "function",' +
          '"input_bucket_location": "input_bucket_location",' +
          '"input_bucket_name": "input_bucket_name",' +
          '"output_bucket_location": "output_bucket_location",' +
          '"output_bucket_name": "output_bucket_name",' +
          '"batch_id": "batch_id",' +
          '"document_counts": {' +
            '"total": 10,' +
            '"pending": 10,' +
            '"successful": 10,' +
            '"failed": 10' +
          '},' +
          '"status": "status",' +
          '"created": "1995-06-12T01:11:11.111Z",' +
          '"updated": "1995-06-12T01:11:11.111Z"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String compareComplyV1ClassifyReturn() {
    return '{' +
      '"document": {' +
        '"title": "title",' +
        '"html": "html",' +
        '"hash": "hash",' +
        '"label": "label"' +
      '},' +
      '"model_id": "model_id",' +
      '"model_version": "model_version",' +
      '"elements": [' +
        '{' +
          '"location": {' +
            '"begin": 10,' +
            '"end": 10' +
          '},' +
          '"text": "text",' +
          '"types": [' +
            '{' +
              '"label": {' +
                '"nature": "nature",' +
                '"party": "party"' +
              '},' +
              '"provenance_ids": [' +
                '"provenance_ids"' +
              ']' +
            '}' +
          '],' +
          '"categories": [' +
            '{' +
              '"label": "label",' +
              '"provenance_ids": [' +
                '"provenance_ids"' +
              ']' +
            '}' +
          '],' +
          '"attributes": [' +
            '{' +
              '"type": "type",' +
              '"text": "text",' +
              '"location": {' +
                '"begin": 10,' +
                '"end": 10' +
              '}' +
            '}' +
          ']' +
        '}' +
      '],' +
      '"tables": [' +
        '{' +
          '"location": {' +
          '  "begin": 10,' +
          '  "end": 10' +
          '},' +
          '"text": "text",' +
          '"section_title": {' +
          '  "text": "text",' +
          '  "location": {' +
          '    "begin": 10,' +
          '    "end": 10' +
          '  }' +
          '},' +
          '"table_headers": [' +
          '  {' +
          '    "cell_id": "cell_id",' +
          '    "location": {' +
          '      "begin": 10,' +
          '      "end": 10' +
          '    },' +
          '    "text": "text",' +
          '    "row_index_begin": 10,' +
          '    "row_index_end": 10,' +
          '    "column_index_begin": 10,' +
          '    "column_index_end": 10' +
          '  }' +
          '],' +
          '"row_headers": [' +
          '  {' +
          '    "cell_id": "cell_id",' +
          '    "location": {' +
          '      "begin": 10,' +
          '      "end": 10' +
          '    },' +
          '    "text": "text",' +
          '    "text_normalized": "text_normalized",' +
          '    "row_index_begin": 10,' +
          '    "row_index_end": 10,' +
          '    "column_index_begin": 10,' +
          '    "column_index_end": 10' +
          '  }' +
          '],' +
          '"column_headers": [' +
          '  {' +
          '    "cell_id": "cell_id",' +
          '    "location": {' +
          '      "begin": 10,' +
          '      "end": 10' +
          '    },' +
          '    "text": "text",' +
          '    "text_normalized": "text_normalized",' +
          '    "row_index_begin": 10,' +
          '    "row_index_end": 10,' +
          '    "column_index_begin": 10,' +
          '    "column_index_end": 10' +
          '  }' +
          '],' +
          '"body_cells": [' +
            '{' +
              '"cell_id": "cell_id",' +
              '"location": {' +
                '"begin": 10,' +
                '"end": 10' +
              '},' +
              '"text": "text",' +
              '"row_index_begin": 10,' +
              '"row_index_end": 10,' +
              '"column_index_begin": 10,' +
              '"column_index_end": 10,' +
              '"row_header_ids": [' +
                '"row_header_ids"' +
              '],' +
              '"row_header_texts": [' +
                '"row_header_texts"' +
              '],' +
              '"row_header_texts_normalized": [' +
                '"row_header_texts_normalized"' +
              '],' +
              '"column_header_ids": [' +
                '"column_header_ids"' +
              '],' +
              '"column_header_texts": [' +
                '"column_header_texts"' +
              '],' +
              '"column_header_texts_normalized": [' +
                '"column_header_texts_normalized"' +
              '],' +
              '"attributes": [' +
              '  {' +
              '    "type": "type",' +
              '    "text": "text",' +
              '    "location": {' +
              '      "begin": 10,' +
              '      "end": 10' +
              '    }' +
              '  }' +
              ']' +
            '}' +
          '],' +
          '"key_value_pairs": [' +
          '{' +
            '"key": {' +
              '"cell_id": "cell_id",' +
              '"location": {' +
                '"begin": 10,' +
                '"end": 10' +
              '},' +
              '"text": "text"' +
            '},' +
            '"value": [{' +
              '"cell_id": "cell_id",' +
              '"location": {' +
                '"begin": 10,' +
                '"end": 10' +
              '},' +
              '"text": "text"' +
            '}]' +
          '}' +
          '],' +
          '"title": {' +
            '"text": "text",' +
            '"location": {' +
              '"begin": 10,' +
              '"end": 10' +
            '}' +
          '},' +
          '"contexts": [' +
            '{' +
              '"text": "text",' +
              '"location": {' +
                '"begin": 10,' +
                '"end": 10' +
              '}' +
            '}' +
          ']' +
        '}' +
      '],' +
      '"document_structure": {' +
        '"section_titles": [' +
          '{' +
            '"text": "text",' +
            '"location": {' +
              '"begin": 10,' +
              '"end": 10' +
            '},' +
            '"level": 10,' +
            '"element_locations": [' +
              '{' +
                '"begin": 10,' +
                '"end": 10' +
              '}' +
            ']' +
          '}' +
        '],' +
        '"leading_sentences": [' +
          '{' +
            '"text": "text",' +
            '"location": {' +
              '"begin": 10,' +
              '"end": 10' +
            '},' +
            '"element_locations": [' +
              '{' +
                '"begin": 10,' +
                '"end": 10' +
              '}' +
            ']' +
          '}' +
        '],' +
        '"paragraphs": [' +
          '{' +
            '"location": {' +
              '"begin": 10,' +
              '"end": 10' +
            '}' +
          '}' +
        ']' +
      '},' +
      '"parties": [' +
        '{' +
          '"party": "party",' +
          '"importance": "importance",' +
          '"role": "role",' +
          '"addresses": [' +
            '{' +
              '"text": "text",' +
              '"location": {' +
                '"begin": 10,' +
                '"end": 10' +
              '}' +
            '}' +
          '],' +
          '"contacts": [' +
            '{' +
              '"name": "name",' +
              '"role": "role"' +
            '}' +
          '],' +
          '"mentions": [' +
            '{' +
              '"text": "text",' +
              '"location": {' +
                '"begin": 10,' +
                '"end": 10' +
              '}' +
            '}' +
          ']' +
        '}' +
      '],' +
      '"effective_dates": [' +
        '{' +
          '"text": "text",' +
          '"location": {' +
            '"begin": 10,' +
            '"end": 10' +
          '},' +
          '"confidence_level": "confidence_level",' +
          '"text_normalized": "text_normalized",' +
          '"provenance_ids": [' +
            '"provenance_ids"' +
          ']' +
        '}' +
      '],' +
      '"contract_amounts": [' +
        '{' +
          '"text": "text",' +
          '"location": {' +
            '"begin": 10,' +
            '"end": 10' +
          '},' +
          '"confidence_level": "confidence_level",' +
          '"text_normalized": "text_normalized",' +
          '"interpretation": {' +
            '"value": "value",' +
            '"numeric_value": 0.5,' +
            '"unit": "unit"' +
          '},' +
          '"provenance_ids": [' +
            '"provenance_ids"' +
          ']' +
        '}' +
      '],' +
      '"termination_dates": [' +
        '{' +
          '"text": "text",' +
          '"location": {' +
            '"begin": 10,' +
            '"end": 10' +
          '},' +
          '"confidence_level": "confidence_level",' +
          '"text_normalized": "text_normalized",' +
          '"provenance_ids": [' +
            '"provenance_ids"' +
          ']' +
        '}' +
      '],' +
      '"contract_types": [' +
      '{' +
        '"text": "text",' +
        '"location": {' +
          '"begin": 10,' +
          '"end": 10' +
        '},' +
        '"provenance_ids": [' +
          '"provenance_ids"' +
        '],' +
        '"confidence_level": "confidence_level"' +
      '}' +
      '],' +
      '"contract_terms": [' +
        '{' +
          '"confidence_level": "confidence_level",' +
          '"text": "text",' +
          '"text_normalized": "text_normalized",' +
          '"interpretation": {' +
            '"value": "value",' +
            '"numeric_value": 0.5,' +
            '"unit": "unit"' +
          '},' +
          '"provenance_ids": [' +
            '"provenance_ids"' +
          '],' +
          '"location": {' +
            '"begin": 10,' +
            '"end": 10' +
          '}' +
        '}' +
      '],' +
      '"payment_terms": [' +
        '{' +
          '"confidence_level": "confidence_level",' +
          '"text": "text",' +
          '"text_normalized": "text_normalized",' +
          '"interpretation": {' +
            '"value": "value",' +
            '"numeric_value": 0.5,' +
            '"unit": "unit"' +
          '},' +
          '"provenance_ids": [' +
            '"provenance_ids"' +
          '],' +
          '"location": {' +
            '"begin": 10,' +
            '"end": 10' +
          '}' +
        '}' +
      '],' +
      '"contract_currencies": [' +
        '{' +
          '"confidence_level": "confidence_level",' +
          '"text": "text",' +
          '"text_normalized": "text_normalized",' +
          '"provenance_ids": [' +
            '"provenance_ids"' +
          '],' +
          '"location": {' +
            '"begin": 10,' +
            '"end": 10' +
          '}' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String compareComplyV1CompareReturn() {
    return '{' +
      '"documents": [' +
        '{' +
          '"title": "title",' +
          '"html": "html",' +
          '"hash": "hash",' +
          '"label": "label"' +
        '}' +
      '],' +
      '"aligned_elements": [' +
        '{' +
          '"element_pair": [' +
            '{' +
              '"document_label": "document_label",' +
              '"text": "text",' +
              '"location": {' +
                '"begin": 10,' +
                '"end": 10' +
              '},' +
              '"types": [' +
                '{' +
                  '"label": {' +
                    '"nature": "nature",' +
                    '"party": "party"' +
                  '}' +
                '}' +
              '],' +
              '"categories": [' +
                '{' +
                  '"label": "label"' +
                '}' +
              '],' +
              '"attributes": [' +
                '{' +
                  '"type": "type",' +
                  '"text": "text",' +
                  '"location": {' +
                    '"begin": 10,' +
                    '"end": 10' +
                  '}' +
                '}' +
              ']' +
            '}' +
          '],' +
          '"identical_text": true,' +
          '"provenance_ids": [' +
            '"provenance_ids"' +
          '],' +
          '"significant_elements": true' +
        '}' +
      '],' +
      '"unaligned_elements": [' +
        '{' +
          '"document_label": "document_label",' +
          '"location": {' +
            '"begin": 10,' +
            '"end": 10' +
          '},' +
          '"text": "text",' +
          '"types": [' +
            '{' +
              '"label": {' +
                '"nature": "nature",' +
                '"party": "party"' +
              '}' +
            '}' +
          '],' +
          '"categories": [' +
            '{' +
              '"label": "label"' +
            '}' +
          '],' +
          '"attributes": [' +
            '{' +
              '"type": "type",' +
              '"text": "text",' +
              '"location": {' +
                '"begin": 10,' +
                '"end": 10' +
              '}' +
            '}' +
          ']' +
        '}' +
      '],' +
      '"model_id": "model_id",' +
      '"model_version": "model_version"' +
    '}';
  }

  public static testMethod String compareComplyV1FeedbackList() {
    return '{' +
      '"feedback": [' +
        '{' +
          '"feedback_id": "feedback_id",' +
          '"comment": "comment",' +
          '"created": "1995-06-12T01:11:11.111Z",' +
          '"feedback_data": {' +
            '"feedback_type": "feedback_type",' +
            '"document": {' +
              '"title": "title",' +
              '"hash": "hash"' +
            '},' +
            '"model_id": "model_id",' +
            '"model_version": "model_version",' +
            '"location": {' +
              '"begin": 10,' +
              '"end": 10' +
            '},' +
            '"text": "text",' +
            '"original_labels": {' +
              '"types": [' +
                '{' +
                  '"label": {' +
                    '"nature": "nature",' +
                    '"party": "party"' +
                  '},' +
                  '"provenance_ids": [' +
                    '"provenance_ids"' +
                  ']' +
                '}' +
              '],' +
              '"categories": [' +
                '{' +
                  '"label": "label",' +
                  '"provenance_ids": [' +
                    '"provenance_ids"' +
                  ']' +
                '}' +
              '],' +
              '"modification": "modification"' +
            '},' +
            '"updated_labels": {' +
              '"types": [' +
                '{' +
                  '"label": {' +
                    '"nature": "nature",' +
                    '"party": "party"' +
                  '},' +
                  '"provenance_ids": [' +
                    '"provenance_ids"' +
                  ']' +
                '}' +
              '],' +
              '"categories": [' +
                '{' +
                  '"label": "label",' +
                  '"provenance_ids": [' +
                    '"provenance_ids"' +
                  ']' +
                '}' +
              '],' +
              '"modification": "modification"' +
            '},' +
            '"pagination": {' +
              '"refresh_cursor": "refresh_cursor",' +
              '"next_cursor": "next_cursor",' +
              '"refresh_url": "refresh_url",' +
              '"next_url": "next_url",' +
              '"total": 10' +
            '}' +
          '}' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String compareComplyV1FeedbackReturn() {
    return '{' +
      '"feedback_id": "feedback_id",' +
      '"user_id": "user_id",' +
      '"comment": "comment",' +
      '"created": "1995-06-12T01:11:11.111Z",' +
      '"feedback_data": {' +
        '"feedback_type": "feedback_type",' +
        '"document": {' +
          '"title": "title",' +
          '"hash": "hash"' +
        '},' +
        '"model_id": "model_id",' +
        '"model_version": "model_version",' +
        '"location": {' +
          '"begin": 10,' +
          '"end": 10' +
        '},' +
        '"text": "text",' +
        '"original_labels": {' +
          '"types": [' +
            '{' +
              '"label": {' +
                '"nature": "nature",' +
                '"party": "party"' +
              '},' +
              '"provenance_ids": [' +
                '"provenance_ids"' +
              ']' +
            '}' +
          '],' +
          '"categories": [' +
            '{' +
              '"label": "label",' +
              '"provenance_ids": [' +
                '"provenance_ids"' +
              ']' +
            '}' +
          '],' +
          '"modification": "modification"' +
        '},' +
        '"updated_labels": {' +
          '"types": [' +
            '{' +
              '"label": {' +
                '"nature": "nature",' +
                '"party": "party"' +
              '},' +
              '"provenance_ids": [' +
                '"provenance_ids"' +
              ']' +
            '}' +
          '],' +
          '"categories": [' +
            '{' +
              '"label": "label",' +
              '"provenance_ids": [' +
                '"provenance_ids"' +
              ']' +
            '}' +
          '],' +
          '"modification": "modification"' +
        '},' +
        '"pagination": {' +
          '"refresh_cursor": "refresh_cursor",' +
          '"next_cursor": "next_cursor",' +
          '"refresh_url": "refresh_url",' +
          '"next_url": "next_url",' +
          '"total": 10' +
        '}' +
      '}' +
    '}';
  }

  public static testMethod String compareComplyV1GetFeedback() {
    return '{' +
      '"feedback_id": "feedback_id",' +
      '"comment": "comment",' +
      '"created": "1995-06-12T01:11:11.111Z",' +
      '"feedback_data": {' +
        '"feedback_type": "feedback_type",' +
        '"document": {' +
          '"title": "title",' +
          '"hash": "hash"' +
        '},' +
        '"model_id": "model_id",' +
        '"model_version": "model_version",' +
        '"location": {' +
          '"begin": 10,' +
          '"end": 10' +
        '},' +
        '"text": "text",' +
        '"original_labels": {' +
          '"types": [' +
            '{' +
              '"label": {' +
                '"nature": "nature",' +
                '"party": "party"' +
              '},' +
              '"provenance_ids": [' +
                '"provenance_ids"' +
              ']' +
            '}' +
          '],' +
          '"categories": [' +
            '{' +
              '"label": "label",' +
              '"provenance_ids": [' +
                '"provenance_ids"' +
              ']' +
            '}' +
          '],' +
          '"modification": "modification"' +
        '},' +
        '"updated_labels": {' +
          '"types": [' +
            '{' +
              '"label": {' +
                '"nature": "nature",' +
                '"party": "party"' +
              '},' +
              '"provenance_ids": [' +
                '"provenance_ids"' +
              ']' +
            '}' +
          '],' +
          '"categories": [' +
            '{' +
              '"label": "label",' +
              '"provenance_ids": [' +
                '"provenance_ids"' +
              ']' +
            '}' +
          '],' +
          '"modification": "modification"' +
        '},' +
        '"pagination": {' +
          '"refresh_cursor": "refresh_cursor",' +
          '"next_cursor": "next_cursor",' +
          '"refresh_url": "refresh_url",' +
          '"next_url": "next_url",' +
          '"total": 10' +
        '}' +
      '}' +
    '}';
  }

  public static testMethod String compareComplyV1HtmlReturn() {
    return '{' +
      '"num_pages": "num_pages",' +
      '"author": "author",' +
      '"publication_date": "publication_date",' +
      '"title": "title",' +
      '"html": "html"' +
    '}';
  }

  public static testMethod String compareComplyV1TableReturn() {
    return '{' +
      '"document": {' +
        '"html": "html",' +
        '"title": "title",' +
        '"hash": "hash"' +
      '},' +
      '"model_id": "model_id",' +
      '"model_version": "model_version",' +
      '"tables": [' +
        '{' +
          '"location": {' +
            '"begin": 10,' +
            '"end": 10' +
          '},' +
          '"text": "text",' +
          '"section_title": {' +
            '"text": "text",' +
            '"location": {' +
              '"begin": 10,' +
              '"end": 10' +
            '}' +
          '},' +
          '"title": {' +
            '"text": "text",' +
            '"location": {' +
              '"begin": 10,' +
              '"end": 10' +
            '}' +
          '},' +
          '"table_headers": [' +
            '{' +
              '"cell_id": "cell_id",' +
              '"location": {' +
                '"begin": 10,' +
                '"end": 10' +
              '},' +
              '"text": "text",' +
              '"row_index_begin": 10,' +
              '"row_index_end": 10,' +
              '"column_index_begin": 10,' +
              '"column_index_end": 10' +
            '}' +
          '],' +
          '"row_headers": [' +
            '{' +
              '"cell_id": "cell_id",' +
              '"location": {' +
                '"begin": 10,' +
                '"end": 10' +
              '},' +
              '"text": "text",' +
              '"text_normalized": "text_normalized",' +
              '"row_index_begin": 10,' +
              '"row_index_end": 10,' +
              '"column_index_begin": 10,' +
              '"column_index_end": 10' +
            '}' +
          '],' +
          '"column_headers": [' +
            '{' +
              '"cell_id": "cell_id",' +
              '"location": {' +
                '"begin": 10,' +
                '"end": 10' +
              '},' +
              '"text": "text",' +
              '"text_normalized": "text_normalized",' +
              '"row_index_begin": 10,' +
              '"row_index_end": 10,' +
              '"column_index_begin": 10,' +
              '"column_index_end": 10' +
            '}' +
          '],' +
          '"body_cells": [' +
            '{' +
              '"cell_id": "cell_id",' +
              '"location": {' +
                '"begin": 10,' +
                '"end": 10' +
              '},' +
              '"text": "text",' +
              '"row_index_begin": 10,' +
              '"row_index_end": 10,' +
              '"column_index_begin": 10,' +
              '"column_index_end": 10,' +
              '"row_header_ids": [' +
                '"row_header_ids"' +
              '],' +
              '"row_header_texts": [' +
                '"row_header_texts"' +
              '],' +
              '"row_header_texts_normalized": [' +
                '"row_header_texts_normalized"' +
              '],' +
              '"column_header_ids": [' +
                '"column_header_ids"' +
              '],' +
              '"column_header_texts": [' +
                '"column_header_texts"' +
              '],' +
              '"column_header_texts_normalized": [' +
                '"column_header_texts_normalized"' +
              '],' +
              '"attributes": [' +
              '  {' +
              '    "type": "type",' +
              '    "text": "text",' +
              '    "location": {' +
              '      "begin": 10,' +
              '      "end": 10' +
              '    }' +
              '  }' +
              ']' +
            '}' +
          '],' +
          '"key_value_pairs": [' +
          '{' +
            '"key": {' +
              '"cell_id": "cell_id",' +
              '"location": {' +
                '"begin": 10,' +
                '"end": 10' +
              '},' +
              '"text": "text"' +
            '},' +
            '"value": [{' +
              '"cell_id": "cell_id",' +
              '"location": {' +
                '"begin": 10,' +
                '"end": 10' +
              '},' +
              '"text": "text"' +
            '}]' +
          '}' +
          '],' +
          '"contexts": [' +
            '{' +
              '"text": "text",' +
              '"location": {' +
                '"begin": 10,' +
                '"end": 10' +
              '}' +
            '}' +
          ']' +
        '}' +
      ']' +
    '}';
  }


  // --- Discovery v1 ---

  public static testMethod String discoveryV1Environment() {
    return '{' +
      '"environment_id": "environment_id",' +
      '"name": "name",' +
      '"description": "description",' +
      '"created": "1995-06-12T01:11:11.111Z",' +
      '"updated": "1995-06-12T01:11:11.111Z",' +
      '"status": "status",' +
      '"read_only": true,' +
      '"size": "size",' +
      '"requested_size": "requested_size",' +
      '"index_capacity": {' +
        '"documents": {' +
          '"indexed": 10,' +
          '"maximum_allowed": 10' +
        '},' +
        '"disk_usage": {' +
          '"used_bytes": 10,' +
          '"maximum_allowed_bytes": 10' +
        '},' +
        '"collections": {' +
          '"available": 10,' +
          '"maximum_allowed": 10' +
        '}' +
      '},' +
      '"search_status": {' +
        '"scope": "scope",' +
        '"status": "status",' +
        '"status_description": "status_description",' +
        '"last_trained": "1995-06-12T01:11:11.111Z"' +
      '}' +
    '}';
  }

  public static testMethod String discoveryV1ListEnvironmentsResponse() {
    return '{' +
      '"environments": [' +
        '{' +
          '"environment_id": "environment_id",' +
          '"name": "name",' +
          '"description": "description",' +
          '"created": "1995-06-12T01:11:11.111Z",' +
          '"updated": "1995-06-12T01:11:11.111Z",' +
          '"status": "status",' +
          '"read_only": true,' +
          '"size": "size",' +
          '"requested_size": "requested_size",' +
          '"index_capacity": {' +
            '"documents": {' +
              '"indexed": 10,' +
              '"maximum_allowed": 10' +
            '},' +
            '"disk_usage": {' +
              '"used_bytes": 10,' +
              '"maximum_allowed_bytes": 10' +
            '},' +
            '"collections": {' +
              '"available": 10,' +
              '"maximum_allowed": 10' +
            '}' +
          '},' +
          '"search_status": {' +
            '"scope": "scope",' +
            '"status": "status",' +
            '"status_description": "status_description",' +
            '"last_trained": "1995-06-12T01:11:11.111Z"' +
          '}' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String discoveryV1ListCollectionFieldsResponse() {
    return '{' +
      '"fields": [' +
        '{' +
          '"field": "field",' +
          '"type": "type"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String discoveryV1Configuration() {
    return '{' +
      '"configuration_id": "configuration_id",' +
      '"name": "name",' +
      '"created": "1995-06-12T01:11:11.111Z",' +
      '"updated": "1995-06-12T01:11:11.111Z",' +
      '"description": "description",' +
      '"conversions": {' +
        '"pdf" : {' +
          '"heading": {' +
            '"fonts": [' +
              '{' +
                '"level": 10,' +
                '"min_size": 10,' +
                '"max_size": 10,' +
                '"bold": true,' +
                '"italic": true,' +
                '"name": "name"' +
              '}' +
            ']' +
          '}' +
        '},' +
        '"word" : {' +
          '"heading": {' +
            '"fonts": [' +
              '{' +
                '"level": 10,' +
                '"min_size": 10,' +
                '"max_size": 10,' +
                '"bold": true,' +
                '"italic": true,' +
                '"name": "name"' +
              '}' +
            '],' +
            '"styles": [' +
              '{' +
                '"level": 10,' +
                '"names": [' +
                  '"names"' +
                ']' +
              '}' +
            ']' +
          '}' +
        '},' +
        '"html": {' +
          '"exclude_tags_completely": [' +
            '"exclude_tags_completely"' +
          '],' +
          '"exclude_tags_keep_content": [' +
            '"exclude_tags_keep_content"' +
          '],' +
          '"keep_content": {' +
            '"xpaths": [' +
              '"xpaths"' +
            ']' +
          '},' +
          '"exclude_content": {' +
            '"xpaths": [' +
              '"xpaths"' +
            ']' +
          '},' +
          '"keep_tag_attributes": [' +
            '"keep_tag_attributes"' +
          '],' +
          '"exclude_tag_attributes": [' +
            '"exclude_tag_attributes"' +
          ']' +
        '},' +
        '"segment": {' +
          '"enabled": true,' +
          '"selector_tags": [' +
            '"selector_tags"' +
          '],' +
          '"annotated_fields": [' +
            '"annotated_fields"' +
          ']' +
        '},' +
        '"json_normalizations": [' +
          '{' +
            '"operation": "operation",' +
            '"source_field": "source_field",' +
            '"destination_field": "destination_field"' +
          '}' +
        '],' +
        '"image_text_recognition": true' +
      '},' +
      '"enrichments": [' +
        '{' +
          '"description": "description",' +
          '"source_field": "source_field",' +
          '"destination_field": "destination_field",' +
          '"enrichment": "enrichment",' +
          '"overwrite": true,' +
          '"ignore_downstream_errors": true,' +
          '"options": {' +
            '"features": {' +
              '"keywords": {' +
                '"sentiment": true,' +
                '"emotion": true,' +
                '"limit": 10' +
              '},' +
              '"entities": {' +
                '"sentiment": true,' +
                '"emotion": true,' +
                '"limit": 10,' +
                '"mentions": true,' +
                '"mentionTypes": true,' +
                '"sentenceLocations": true,' +
                '"model": "model"' +
              '},' +
              '"sentiment": {' +
                '"document": true,' +
                '"targets": [' +
                  '"target"' +
                ']' +
              '},' +
              '"emotion": {' +
                '"document": true,' +
                '"targets": [' +
                  '"target"' +
                ']' +
              '},' +
              '"semantic_roles": {' +
                '"entities": true,' +
                '"keywords": true,' +
                '"limit": 10' +
              '},' +
              '"relations": {' +
                '"model": "model"' +
              '},' +
              '"concepts": {' +
                '"limit": 10' +
              '}' +
            '},' +
            '"language": "language",' +
            '"model": "model"' +
          '}' +
        '}' +
      '],' +
      '"normalizations": [' +
        '{' +
          '"operation": "operation",' +
          '"source_field": "source_field",' +
          '"destination_field": "destination_field"' +
        '}' +
      '],' +
      '"source": {' +
        '"type": "type",' +
        '"credential_id": "credential_id",' +
        '"schedule": {' +
          '"enabled": true,' +
          '"time_zone": "time_zone",' +
          '"frequency": "frequency"' +
        '},' +
        '"options": {' +
          '"folders": [' +
            '{' +
              '"owner_user_id": "owner_user_id",' +
              '"folder_id": "folder_id",' +
              '"limit": 10' +
            '}' +
          '],' +
          '"objects": [' +
            '{' +
              '"name": "name",' +
              '"limit": 10' +
            '}' +
          '],' +
          '"site_collections": [' +
            '{' +
              '"site_collection_path": "site_collection_path",' +
              '"limit": 10' +
            '}' +
          '],' +
          '"urls": [' +
            '{' +
              '"url": "url",' +
              '"limit_to_starting_hosts": true,' +
              '"crawl_speed": "crawl_speed",' +
              '"allow_untrusted_certificate": true,' +
              '"maximum_hops": 10,' +
              '"request_timeout": 10,' +
              '"override_robots_txt": true,' +
              '"blacklist": [' +
                '"blacklist"' +
              ']' +
            '}' +
          '],' +
          '"buckets": [' +
            '{' +
              '"name": "name",' +
              '"limit": 10' +
            '}' +
          '],' +
          '"crawl_all_buckets": true' +
        '}' +
      '}' +
    '}';
  }

  public static testMethod String discoveryV1ListConfigurationsResponse() {
    return '{' +
      '"configurations": [' +
        '{' +
          '"configuration_id": "configuration_id",' +
          '"name": "name",' +
          '"created": "1995-06-12T01:11:11.111Z",' +
          '"updated": "1995-06-12T01:11:11.111Z",' +
          '"description": "description",' +
          '"conversions": {' +
            '"pdf" : {' +
              '"heading": {' +
                '"fonts": [' +
                  '{' +
                    '"level": 10,' +
                    '"min_size": 10,' +
                    '"max_size": 10,' +
                    '"bold": true,' +
                    '"italic": true,' +
                    '"name": "name"' +
                  '}' +
                ']' +
              '}' +
            '},' +
            '"word" : {' +
              '"heading": {' +
                '"fonts": [' +
                  '{' +
                    '"level": 10,' +
                    '"min_size": 10,' +
                    '"max_size": 10,' +
                    '"bold": true,' +
                    '"italic": true,' +
                    '"name": "name"' +
                  '}' +
                '],' +
                '"styles": [' +
                  '{' +
                    '"level": 10,' +
                    '"names": [' +
                      '"names"' +
                    ']' +
                  '}' +
                ']' +
              '}' +
            '},' +
            '"html": {' +
              '"exclude_tags_completely": [' +
                '"exclude_tags_completely"' +
              '],' +
              '"exclude_tags_keep_content": [' +
                '"exclude_tags_keep_content"' +
              '],' +
              '"keep_content": {' +
                '"xpaths": [' +
                  '"xpaths"' +
                ']' +
              '},' +
              '"exclude_content": {' +
                '"xpaths": [' +
                  '"xpaths"' +
                ']' +
              '},' +
              '"keep_tag_attributes": [' +
                '"keep_tag_attributes"' +
              '],' +
              '"exclude_tag_attributes": [' +
                '"exclude_tag_attributes"' +
              ']' +
            '},' +
            '"segment": {' +
              '"enabled": true,' +
              '"selector_tags": [' +
                '"selector_tags"' +
              '],' +
              '"annotated_fields": [' +
                '"annotated_fields"' +
              ']' +
            '},' +
            '"json_normalizations": [' +
              '{' +
                '"operation": "operation",' +
                '"source_field": "source_field",' +
                '"destination_field": "destination_field"' +
              '}' +
            '],' +
            '"image_text_recognition": true' +
          '},' +
          '"enrichments": [' +
            '{' +
              '"description": "description",' +
              '"source_field": "source_field",' +
              '"destination_field": "destination_field",' +
              '"enrichment": "enrichment",' +
              '"overwrite": true,' +
              '"ignore_downstream_errors": true,' +
              '"options": {' +
                '"features": {' +
                  '"keywords": {' +
                    '"sentiment": true,' +
                    '"emotion": true,' +
                    '"limit": 10' +
                  '},' +
                  '"entities": {' +
                    '"sentiment": true,' +
                    '"emotion": true,' +
                    '"limit": 10,' +
                    '"mentions": true,' +
                    '"mentionTypes": true,' +
                    '"sentenceLocations": true,' +
                    '"model": "model"' +
                  '},' +
                  '"sentiment": {' +
                    '"document": true,' +
                    '"targets": [' +
                      '"target"' +
                    ']' +
                  '},' +
                  '"emotion": {' +
                    '"document": true,' +
                    '"targets": [' +
                      '"target"' +
                    ']' +
                  '},' +
                  '"semantic_roles": {' +
                    '"entities": true,' +
                    '"keywords": true,' +
                    '"limit": 10' +
                  '},' +
                  '"relations": {' +
                    '"model": "model"' +
                  '},' +
                  '"concepts": {' +
                    '"limit": 10' +
                  '}' +
                '},' +
                '"language": "language",' +
                '"model": "model"' +
              '}' +
            '}' +
          '],' +
          '"normalizations": [' +
            '{' +
              '"operation": "operation",' +
              '"source_field": "source_field",' +
              '"destination_field": "destination_field"' +
            '}' +
          '],' +
          '"source": {' +
            '"type": "type",' +
            '"credential_id": "credential_id",' +
            '"schedule": {' +
              '"enabled": true,' +
              '"time_zone": "time_zone",' +
              '"frequency": "frequency"' +
            '},' +
            '"options": {' +
              '"folders": [' +
                '{' +
                  '"owner_user_id": "owner_user_id",' +
                  '"folder_id": "folder_id",' +
                  '"limit": 10' +
                '}' +
              '],' +
              '"objects": [' +
                '{' +
                  '"name": "name",' +
                  '"limit": 10' +
                '}' +
              '],' +
              '"site_collections": [' +
                '{' +
                  '"site_collection_path": "site_collection_path",' +
                  '"limit": 10' +
                '}' +
              '],' +
              '"urls": [' +
                '{' +
                  '"url": "url",' +
                  '"limit_to_starting_hosts": true,' +
                  '"crawl_speed": "crawl_speed",' +
                  '"allow_untrusted_certificate": true,' +
                  '"maximum_hops": 10,' +
                  '"request_timeout": 10,' +
                  '"override_robots_txt": true,' +
                  '"blacklist": [' +
                    '"blacklist"' +
                  ']' +
                '}' +
              '],' +
              '"buckets": [' +
                '{' +
                  '"name": "name",' +
                  '"limit": 10' +
                '}' +
              '],' +
              '"crawl_all_buckets": true' +
            '}' +
          '}' +
        '}' +
      ']' +
    '}';
  }

   public static testMethod String discoveryV1Collection() {
    return '{' +
      '"collection_id": "collection_id", ' +
      '"name": "name", ' +
      '"configuration_id": "configuration_id", ' +
      '"language": "language", ' +
      '"status": "status", ' +
      '"description": "description", ' +
      '"created": "1995-06-12T01:11:11.111Z", ' +
      '"updated": "1995-06-12T01:11:11.111Z", ' +
      '"document_counts": {' +
        '"available": 10, ' +
        '"processing": 10, ' +
        '"failed": 10,' +
        '"pending": 10' +
      '}, ' +
      '"disk_usage": {' +
        '"used_bytes": 10' +
      '}, ' +
      '"training_status": {' +
        '"data_updated": "1995-06-12T01:11:11.111Z",' +
        '"total_examples": 10,' +
        '"sufficient_label_diversity": true,' +
        '"processing": true,' +
        '"minimum_examples_added": true,' +
        '"successfully_trained": "1995-06-12T01:11:11.111Z",' +
        '"available": true,' +
        '"notices": 10,' +
        '"minimum_queries_added": true' +
      '},' +
      '"crawl_status": {' +
        '"source_crawl": {' +
          '"status": "status",' +
          '"next_crawl": "1995-06-12T01:11:11.111Z"' +
        '}' +
      '},' +
      '"smart_document_understanding": {' +
        '"enabled": true,' +
        '"total_annotated_pages": 10,' +
        '"total_pages": 10,' +
        '"total_documents": 10,' +
        '"custom_fields": {' +
          '"defined": 10,' +
          '"maximum_allowed": 10' +
        '}' +
      '}' +
    '}';
  }

  public static testMethod String discoveryV1ListCollectionsResponse() {
    return '{' +
      '"collections": [' +
        '{' +
          '"collection_id": "collection_id", ' +
          '"name": "name", ' +
          '"configuration_id": "configuration_id", ' +
          '"language": "language", ' +
          '"status": "status", ' +
          '"description": "description", ' +
          '"created": "1995-06-12T01:11:11.111Z", ' +
          '"updated": "1995-06-12T01:11:11.111Z", ' +
          '"document_counts": {' +
            '"available": 10, ' +
            '"processing": 10, ' +
            '"failed": 10,' +
            '"pending": 10' +
          '}, ' +
          '"disk_usage": {' +
            '"used_bytes": 10' +
          '}, ' +
          '"training_status": {' +
            '"data_updated": "1995-06-12T01:11:11.111Z",' +
            '"total_examples": 10,' +
            '"sufficient_label_diversity": true,' +
            '"processing": true,' +
            '"minimum_examples_added": true,' +
            '"successfully_trained": "1995-06-12T01:11:11.111Z",' +
            '"available": true,' +
            '"notices": 10,' +
            '"minimum_queries_added": true' +
          '},' +
          '"crawl_status": {' +
            '"source_crawl": {' +
              '"status": "status",' +
              '"next_crawl": "1995-06-12T01:11:11.111Z"' +
            '}' +
          '},' +
          '"smart_document_understanding": {' +
            '"enabled": true,' +
            '"total_annotated_pages": 10,' +
            '"total_pages": 10,' +
            '"total_documents": 10,' +
            '"custom_fields": {' +
              '"defined": 10,' +
              '"maximum_allowed": 10' +
            '}' +
          '}' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String discoveryV1Expansions() {
    return '{' +
      '"expansions": [' +
        '{' +
          '"input_terms" : [' +
            '"input_terms"' +
          '],' +
          '"expanded_terms" : [' +
            '"expanded_terms"' +
          ']' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String discoveryV1TokenDictStatusResponse() {
    return '{' +
      '"status" : "status",' +
      '"type" : "type"' +
    '}';
  }

  public static testMethod String discoveryV1DocumentAccepted() {
    return '{' +
      '"document_id": "document_id", ' +
      '"status": "status", ' +
      '"notices": [' +
        '{' +
          '"notice_id": "notice_id", ' +
          '"created": "1995-06-12T01:11:11.111Z", ' +
          '"severity": "severity", ' +
          '"step": "step", ' +
          '"description": "description", ' +
          '"query_id": "query_id", ' +
          '"document_id": "document_id"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String discoveryV1DocumentStatus() {
    return '{' +
      '"document_id": "document_id", ' +
      '"configuration_id": "configuration_id", ' +
      '"status": "status", ' +
      '"status_description": "status_description", ' +
      '"filename": "filename", ' +
      '"file_type": "file_type", ' +
      '"sha1": "sha1", ' +
      '"notices": [' +
        '{' +
          '"notice_id": "notice_id", ' +
          '"created": "1995-06-12T01:11:11.111Z", ' +
          '"severity": "severity", ' +
          '"step": "step", ' +
          '"description": "description", ' +
          '"query_id": "query_id", ' +
          '"document_id": "document_id"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String discoveryV1QueryResponse() {
    return '{' +
      '"matching_results": 10,' +
      '"aggregations": [' +
        '{' +
          '"type": "type",' +
          '"results": [' +
            '{' +
              '"key": "key",' +
              '"matching_results": 10,' +
              '"aggregations": [' +
                '{' +
                  '"type": "type",' +
                  '"matching_results": 10,' +
                  '"field": "field",' +
                  '"histogram_interval": 10,' +
                  '"value": 0.5,' +
                  '"count": 10,' +
                  '"match": "match",' +
                  '"path": "path",' +
                  '"timeslice_interval": "timeslice_interval",' +
                  '"anomaly": true,' +
                  '"size": 10,' +
                  '"hits": {' +
                    '"matching_results": 10,' +
                    '"hits": [' +
                      '{' +
                        '"id": "id",' +
                        '"collection_id": "collection_id",' +
                        '"result_metadata": {' +
                          '"score": 0.5,' +
                          '"confidence": 0.5' +
                        '},' +
                        '"title": "title"' +
                      '}' +
                    ']' +
                  '}' +
                '}' +
              ']' +
            '}' +
          '],' +
          '"matching_results": 10,' +
          '"field": "field",' +
          '"histogram_interval": 10,' +
          '"value": 0.5,' +
          '"count": 10,' +
          '"match": "match",' +
          '"path": "path",' +
          '"timeslice_interval": "timeslice_interval",' +
          '"anomaly": true,' +
          '"size": 10,' +
          '"hits": {' +
            '"matching_results": 10,' +
            '"hits": [' +
              '{' +
                '"id": "id",' +
                '"collection_id": "collection_id",' +
                '"result_metadata": {' +
                  '"score": 0.5,' +
                  '"confidence": 0.5' +
                '},' +
                '"title": "title"' +
              '}' +
            ']' +
          '}' +
        '}' +
      '],' +
      '"results": [' +
        '{' +
          '"id": "id",' +
          '"collection_id": "collection_id",' +
          '"result_metadata": {' +
            '"score": 0.5,' +
            '"confidence": 0.5' +
          '},' +
          '"title": "title"' +
        '}' +
      '],' +
      '"passages": [' +
        '{' +
          '"document_id": "document_id",' +
          '"passage_score": 0.5,' +
          '"passage_text": "passage_text",' +
          '"start_offset": 10,' +
          '"end_offset": 10,' +
          '"field": "field"' +
        '}' +
      '],' +
      '"duplicates_removed": 10,' +
      '"session_token": "session_token",' +
      '"suggested_query": "suggested_query",' +
      '"retrieval_details": {' +
        '"document_retrieval_strategy": "document_retrieval_strategy"' +
      '}' +
    '}';
  }

  public static testMethod String discoveryV1QueryNoticesResponse() {
    return '{' +
      '"matching_results": 10,' +
      '"results": [' +
        '{' +
          '"id": "id",' +
          '"collection_id": "collection_id",' +
          '"result_metadata": {' +
            '"score": 0.5,' +
            '"confidence": 0.5' +
          '},' +
          '"title": "title",' +
          '"code": 10,' +
          '"filename": "filename",' +
          '"file_type": "file_type",' +
          '"sha1": "sha1",' +
          '"notice_id": "notice_id",' +
          '"notices": [' +
            '{' +
              '"notice_id": "notice_id",' +
              '"created": "1995-06-12T01:11:11.111Z",' +
              '"severity": "severity",' +
              '"step": "step",' +
              '"description": "description",' +
              '"query_id": "query_id",' +
              '"document_id": "document_id"' +
            '}' +
          ']' +
        '}' +
      '],' +
      '"aggregations": [' +
        '{' +
          '"type": "type",' +
          '"results": [' +
            '{' +
              '"key": "key",' +
              '"matching_results": 10,' +
              '"aggregations": [' +
                '{' +
                  '"type": "type",' +
                  '"matching_results": 10,' +
                  '"field": "field",' +
                  '"histogram_interval": 10,' +
                  '"value": 0.5,' +
                  '"count": 10,' +
                  '"match": "match",' +
                  '"path": "path",' +
                  '"timeslice_interval": "timeslice_interval",' +
                  '"anomaly": true,' +
                  '"size": 10,' +
                  '"hits": {' +
                    '"matching_results": 10,' +
                    '"hits": [' +
                      '{' +
                        '"id": "id",' +
                        '"collection_id": "collection_id",' +
                        '"result_metadata": {' +
                          '"score": 0.5,' +
                          '"confidence": 0.5' +
                        '},' +
                        '"title": "title"' +
                      '}' +
                    ']' +
                  '}' +
                '}' +
              ']' +
            '}' +
          '],' +
          '"matching_results": 10,' +
          '"field": "field",' +
          '"histogram_interval": 10,' +
          '"value": 0.5,' +
          '"count": 10,' +
          '"match": "match",' +
          '"path": "path",' +
          '"timeslice_interval": "timeslice_interval",' +
          '"anomaly": true,' +
          '"size": 10,' +
          '"hits": {' +
            '"matching_results": 10,' +
            '"hits": [' +
              '{' +
                '"id": "id",' +
                '"collection_id": "collection_id",' +
                '"result_metadata": {' +
                  '"score": 0.5,' +
                  '"confidence": 0.5' +
                '},' +
                '"title": "title"' +
              '}' +
            ']' +
          '}' +
        '}' +
      '],' +
      '"passages": [' +
        '{' +
          '"document_id": "document_id",' +
          '"passage_score": 0.5,' +
          '"passage_text": "passage_text",' +
          '"start_offset": 10,' +
          '"end_offset": 10,' +
          '"field": "field"' +
        '}' +
      '],' +
      '"duplicates_removed": 10' +
    '}';
  }

  public static testMethod String discoveryV1Completions() {
    return '{' +
      '"completions": [' +
        '"completions"' +
      ']' +
    '}';
  }

  public static testMethod String discoveryV1TrainingDataSet() {
    return  '{' +
      '"environment_id": "environment_id", ' +
      '"collection_id": "collection_id", ' +
      '"queries": [' +
        '{' +
          '"query_id": "query_id", ' +
          '"natural_language_query": "natural_language_query", ' +
          '"filter": "filter", ' +
          '"examples": [' +
            '{' +
              '"document_id": "document_id", ' +
              '"cross_reference": "cross_reference", ' +
              '"relevance": 10' +
            '}' +
          ']' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String discoveryV1TrainingQuery() {
    return  '{' +
      '"query_id": "query_id", ' +
      '"natural_language_query": "natural_language_query", ' +
      '"filter": "filter", ' +
      '"examples": [' +
        '{' +
          '"document_id": "document_id", ' +
          '"cross_reference": "cross_reference", ' +
          '"relevance": 10' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String discoveryV1TrainingExampleList() {
    return '{' +
      '"examples": [' +
        '{' +
          '"document_id": "document_id", ' +
          '"cross_reference": "cross_reference", ' +
          '"relevance": 10' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String discoveryV1TrainingExample() {
    return '{' +
      '"document_id": "document_id", ' +
      '"cross_reference": "cross_reference", ' +
      '"relevance": 10' +
    '}';
  }

  public static testMethod String discoveryV1CreateEventResponse() {
    return '{' +
      '"type": "type",' +
      '"data": {' +
        '"environment_id": "environment_id",' +
        '"session_token": "session_token",' +
        '"client_timestamp": "1995-06-12T01:11:11.111Z",' +
        '"display_rank": 10,' +
        '"collection_id": "collection_id",' +
        '"document_id": "document_id",' +
        '"query_id": "query_id"' +
      '}' +
    '}';
  }

  public static testMethod String discoveryV1LogQueryResponse() {
    return '{' +
      '"matching_results": 10,' +
      '"results": [' +
        '{' +
          '"environment_id": "environment_id",' +
          '"customer_id": "customer_id",' +
          '"document_type": "document_type",' +
          '"natural_language_query": "natural_language_query",' +
          '"document_results": {' +
            '"results": [' +
              '{' +
                '"position": 10,' +
                '"document_id": "document_id",' +
                '"score": 0.5,' +
                '"confidence": 0.5,' +
                '"collection_id": "collection_id"' +
              '}' +
            '],' +
            '"count": 10' +
          '},' +
          '"created_timestamp": "1995-06-12T01:11:11.111Z",' +
          '"client_timestamp": "1995-06-12T01:11:11.111Z",' +
          '"query_id": "query_id",' +
          '"session_token": "session_token",' +
          '"collection_id": "collection_id",' +
          '"display_rank": 10,' +
          '"document_id": "document_id",' +
          '"event_type": "event_type",' +
          '"result_type": "result_type"' +
        '}' +
      ']' +
    '}'; 
  }

  public static testMethod String discoveryV1MetricResponse() {
    return '{' +
      '"aggregations": [' +
        '{' +
          '"interval": "interval",' +
          '"event_type": "event_type",' +
          '"results": [' +
            '{' +
              '"key_as_string": "1995-06-12T01:11:11.111Z",' +
              '"key": 10,' +
              '"matching_results": 10,' +
              '"event_rate": 0.5' +
            '}' +
          ']' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String discoveryV1MetricTokenResponse() {
    return '{' +
      '"aggregations": [' +
        '{' +
          '"event_type": "event_type",' +
          '"results": [' +
            '{' +
              '"key": "key",' +
              '"matching_results": 10,' +
              '"event_rate": 0.5' +
            '}' +
          ']' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String discoveryV1CredentialsList() {
    return '{' +
      '"credentials" : [' +
        '{' +
          '"credential_id": "credential_id",' +
          '"source_type": "source_type",' +
          '"credential_details": {' +
            '"credential_type": "credential_type",' +
            '"client_id": "client_id",' +
            '"enterprise_id": "enterprise_id",' +
            '"url": "url",' +
            '"username": "username",' +
            '"organization_url": "organization_url",' +
            '"site_collection.path": "site_collection.path",' +
            '"client_secret": "client_secret",' +
            '"public_key_id": "public_key_id",' +
            '"private_key": "private_key",' +
            '"passphrase": "passphrase",' +
            '"password": "password",' +
            '"gateway_id": "gateway_id",' +
            '"source_version": "source_version",' +
            '"web_application_url": "web_application_url",' +
            '"domain": "domain",' +
            '"endpoint": "endpoint",' +
            '"access_key_id": "access_key_id",' +
            '"secret_access_key": "secret_access_key"' +
          '},' +
          '"status": "status"' +
        '}' + 
      ']' +
    '}';
  }

  public static testMethod String discoveryV1Credentials() {
    return '{' +
      '"credential_id": "credential_id",' +
      '"source_type": "source_type",' +
      '"credential_details": {' +
        '"credential_type": "credential_type",' +
        '"client_id": "client_id",' +
        '"enterprise_id": "enterprise_id",' +
        '"url": "url",' +
        '"username": "username",' +
        '"organization_url": "organization_url",' +
        '"site_collection.path": "site_collection.path",' +
        '"client_secret": "client_secret",' +
        '"public_key_id": "public_key_id",' +
        '"private_key": "private_key",' +
        '"passphrase": "passphrase",' +
        '"password": "password",' +
        '"gateway_id": "gateway_id",' +
        '"source_version": "source_version",' +
        '"web_application_url": "web_application_url",' +
        '"domain": "domain",' +
        '"endpoint": "endpoint",' +
        '"access_key_id": "access_key_id",' +
        '"secret_access_key": "secret_access_key"' +
      '},' +
      '"status": "status"' +
    '}';
  }

  public static testMethod String discoveryV1GatewayList() {
    return '{' +
      '"gateways": [' +
        '{' +
          '"gateway_id": "gateway_id",' +
          '"name": "name",' +
          '"status": "status",' +
          '"token": "token",' +
          '"token_id": "token_id"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String discoveryV1Gateway() {
    return '{' +
      '"gateway_id": "gateway_id",' +
      '"name": "name",' +
      '"status": "status",' +
      '"token": "token",' +
      '"token_id": "token_id"' +
    '}';
  }


  // --- Language Translator v3 ---

  public static testMethod String languageTranslatorV3TranslationModel() {
    return '{' +
      '"model_id": "model_id", ' +
      '"source": "source", ' +
      '"target": "target", ' +
      '"base_model_id": "base_model_id", ' +
      '"domain": "domain", ' +
      '"owner": "owner", ' +
      '"status": "status", ' +
      '"customizable": true, ' +
      '"default_model": true, ' +
      '"name": "name"' +
    '}';
  }
  
  public static testMethod String languageTranslatorV3TranslationModels() {
    return '{' +
      '"models": [{' +
        '"model_id": "model_id", ' +
        '"source": "source", ' +
        '"target": "target", ' +
        '"base_model_id": "base_model_id", ' +
        '"domain": "domain", ' +
        '"owner": "owner", ' +
        '"status": "status", ' +
        '"customizable": true, ' +
        '"default_model": true, ' +
        '"name": "name"' +
      '}]' +
    '}';
  }

  public static testMethod String languageTranslatorV3DocumentList() {
    return '{' +
      '"documents": [' +
        '{' +
          '"document_id": "document_id",' +
          '"filename": "filename",' +
          '"model_id": "model_id",' +
          '"base_model_id": "base_model_id",' +
          '"source": "source",' +
          '"target": "target",' +
          '"status": "status",' +
          '"created": "1995-06-12T01:11:11.111Z",' +
          '"completed": "1995-06-12T01:11:11.111Z",' +
          '"word_count": 10,' +
          '"character_count": 10' +
        '}' +
      ']' +
    '}';
  }
  
  public static testMethod String languageTranslatorV3IdentifiableLanguages() {
    return '{' +
      '"languages": [' +
        '{' +
        ' "language": "language", ' +
        ' "name": "name"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String languageTranslatorV3IdentifiedLanguages() {
    return '{' +
      '"languages": [' +
        '{' +
          '"language": "language",' +
          '"confidence": 0.5' +
        '}' +
      ']' +
    '}';
  }
  
  public static testMethod String languageTranslatorV3TranslationResult() {
    return '{' +
      '"translations": [{' +
        '"translation": "translation"' +
      '}], ' +
      '"word_count": 10, ' +
      '"character_count": 10' +
    '}';
  }

  public static testMethod String languageTranslatorV3DocumentStatus() {
    return '{' +
      '"document_id": "document_id",' +
      '"filename": "filename",' +
      '"model_id": "model_id",' +
      '"base_model_id": "base_model_id",' +
      '"source": "source",' +
      '"target": "target",' +
      '"status": "status",' +
      '"created": "1995-06-12T01:11:11.111Z",' +
      '"completed": "1995-06-12T01:11:11.111Z",' +
      '"word_count": 10,' +
      '"character_count": 10' +
    '}';
  }


  // --- Natural Language Classifier v1 ---

  public static testMethod String naturalLanguageClassifierV1Classification() {
    return '{' +
      '"classifier_id": "classifier_id",' +
      '"url": "url",' +
      '"text": "text",' +
      '"top_class": "top_class",' +
      '"classes": [' +
        '{' +
          '"class_name": "class_name",' +
          '"confidence": 0.5' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String naturalLanguageClassifierV1ClassificationCollection() {
    return '{' +
      '"classifier_id": "classifier_id",' +
      '"url": "url",' +
      '"collection": [' +
        '{' +
          '"text": "text",' +
          '"top_class": "top_class",' +
          '"classes": [' +
            '{' +
              '"class_name": "class_name",' +
              '"confidence": 0.5' +
            '}' +
          ']' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String naturalLanguageClassifierV1Classifier() {
    return '{' +
      '"classifier_id": "classifier_id", ' +
      '"name": "name", ' +
      '"language": "language", ' +
      '"created": "1995-06-12T01:11:11.111Z", ' +
      '"url": "url", ' +
      '"status": "status", ' +
      '"status_description": "status_description"' +
    '}';
  }

  public static testMethod String naturalLanguageClassifierV1ClassifierList() {
    return '{' +
      '"classifiers": [' +
        '{' +
          '"classifier_id": "classifier_id", ' +
          '"name": "name", ' +
          '"language": "language", ' +
          '"created": "1995-06-12T01:11:11.111Z", ' +
          '"url": "url", ' +
          '"status": "status", ' +
          '"status_description": "status_description"' +
        '}' +
      ']' +
    '}';
  }


  // --- Natural Language Understanding v1 ---

  public static testMethod String naturalLanguageUnderstandingV1AnalysisResults() {
    return '{' +
      '"usage": {' +
        '"features": 10,' +
        '"text_characters": 10,' +
        '"text_units": 10' +
      '},' +
      '"language": "language",' +
      '"retrieved_url": "retrieved_url",' +
      '"analyzed_text": "analyzed_text",' +
      '"categories": [' +
        '{' +
          '"score": 0.5,' +
          '"label": "label",' +
          '"explanation": {' +
            '"relevant_text": [' +
              '{' +
                '"text": "text"' +
              '}' +
            ']' +
          '}' +
        '}' +
      '],' +
      '"concepts": [' +
        '{' +
          '"text": "text",' +
          '"relevance": 0.5,' +
          '"dbpedia_resource": "dbpedia_resource"' +
        '}' +
      '],' +
      '"emotion": {' +
        '"targets": [' +
          '{' +
            '"text": "text",' +
            '"emotion": {' +
              '"sadness": 0.5,' +
              '"joy": 0.5,' +
              '"fear": 0.5,' +
              '"disgust": 0.5,' +
              '"anger": 0.5' +
            '}' +
          '}' +
        '],' +
        '"document": {' +
          '"emotion": {' +
            '"sadness": 0.5,' +
            '"joy": 0.5,' +
            '"fear": 0.5,' +
            '"disgust": 0.5,' +
            '"anger": 0.5' +
          '}' +
        '}' +
      '},' +
      '"metadata": {' +
        '"title": "title",' +
        '"image": "image",' +
        '"publication_date": "publication_date",' +
        '"feeds": [' +
          '{' +
            '"link": "link"' +
          '}' +
        '],' +
        '"authors": [' +
          '{' +
            '"name": "name"' +
          '}' +
        ']' +
      '},' +
      '"relations": [' +
        '{' +
          '"type": "type",' +
          '"sentence": "sentence",' +
          '"score": 0.5,' +
          '"arguments": [' +
            '{' +
              '"text": "text",' +
              '"entities": [' +
                '{' +
                  '"type": "type",' +
                  '"text": "text"' +
                '}' +
              '],' +
              '"location": [' +
                '10' +
              ']' +
            '}' +
          ']' +
        '}' +
      '],' +
      '"semantic_roles": [' +
        '{' +
          '"sentence": "sentence",' +
          '"subject": {' +
            '"text": "text",' +
            '"entities": [' +
              '{' +
                '"type": "type",' +
                '"text": "text"' +
              '}' +
            '],' +
            '"keywords": [' +
              '{' +
                '"text": "text"' +
              '}' +
            ']' +
          '},' +
          '"action": {' +
            '"verb": {' +
              '"text": "text",' +
              '"tense": "tense"' +
            '},' +
            '"text": "text",' +
            '"normalized": "normalized"' +
          '},' +
          '"object": {' +
            '"text": "text",' +
            '"keywords": [' +
              '{' +
                '"text": "text"' +
              '}' +
            ']' +
          '}' +
        '}' +
      '],' +
      '"sentiment": {' +
        '"document": {' +
          '"label": "label",' +
          '"score": 0.5' +
        '},' +
        '"targets": [' +
          '{' +
            '"text": "text",' +
            '"score": 0.5' +
          '}' +
        ']' +
      '},' +
      '"keywords": [' +
        '{' +
          '"text": "text",' +
          '"sentiment": {' +
            '"score": 0.5' +
          '},' +
          '"count": 10,' +
          '"relevance": 0.5,' +
          '"emotion": {' +
            '"sadness": 0.5,' +
            '"joy": 0.5,' +
            '"fear": 0.5,' +
            '"disgust": 0.5,' +
            '"anger": 0.5' +
          '}' +
        '}' +
      '],' +
      '"entities": [' +
        '{' +
          '"type": "type",' +
          '"text": "text",' +
          '"sentiment": {' +
            '"score": 0.5' +
          '},' +
          '"relevance": 0.5,' +
          '"emotion": {' +
            '"sadness": 0.5,' +
            '"joy": 0.5,' +
            '"fear": 0.5,' +
            '"disgust": 0.5,' +
            '"anger": 0.5' +
          '},' +
          '"disambiguation": {' +
            '"subtype": [' +
              '"subtype"' +
            '],' +
            '"name": "name",' +
            '"dbpedia_resource": "dbpedia_resource"' +
          '},' +
          '"count": 10,' +
          '"confidence": 0.5,' +
          '"mentions": [' +
            '{' +
              '"text": "text",' +
              '"location": [' +
                '10' +
              '],' +
              '"confidence": 0.5' +
            '}' +
          ']' +
        '}' +
      '],' +
      '"syntax": {' +
        '"tokens": [' +
          '{' +
            '"text": "text",' +
            '"part_of_speech": "part_of_speech",' +
            '"location": [' +
              '10' +
            '],' +
            '"lemma": "lemma"' +
          '}' +
        '],' +
        '"sentences": [' +
          '{' +
            '"text": "text",' +
            '"location": [' +
              '10' +
            ']' +
          '}' +
        ']' +
      '}' +
    '}';
  }

  public static testMethod String naturalLanguageUnderstandingV1ListModelsResults() {
    return '{' +
      '"models": [' +
        '{' +
          '"status": "status", ' +
          '"model_id": "model_id", ' +
          '"language": "language", ' +
          '"description": "description",' +
          '"workspace_id": "workspace_id", ' +
          '"version": "version", ' +
          '"version_description": "version_description", ' +
          '"created": "1995-06-12T01:11:11.111Z"' +
        '}' +
      ']' +
    '}';
  }


  // --- Personality Insights v3 ---

  public static testMethod String personalityInsightsV3Profile() {
    return '{' +
      '"processed_language": "processed_language", ' +
      '"word_count": 10, ' +
      '"word_count_message": "word_count_message", ' +
      '"personality": [' +
        '{' +
          '"trait_id": "trait_id", ' +
          '"name": "name", ' +
          '"category": "category", ' +
          '"percentile": 0.5, ' +
          '"raw_score": 0.5, ' +
          '"significant": true, ' +
          '"children": [' +
            '{' +
              '"trait_id": "trait_id", ' +
              '"name": "name", ' +
              '"category": "category", ' +
              '"percentile": 0.5, ' +
              '"raw_score": 0.5, ' +
              '"significant": true ' +
            '}' +
          ']' +
        '}' +
      '], ' +
      '"values": [' +
        '{' +
          '"trait_id": "trait_id", ' +
          '"name": "name", ' +
          '"category": "category", ' +
          '"percentile": 0.5, ' +
          '"raw_score": 0.5, ' +
          '"significant": true, ' +
          '"children": [' +
            '{' +
              '"trait_id": "trait_id", ' +
              '"name": "name", ' +
              '"category": "category", ' +
              '"percentile": 0.5, ' +
              '"raw_score": 0.5, ' +
              '"significant": true ' +
            '}' +
          ']' +
        '}' +
      '], ' +
      '"needs": [' +
        '{' +
          '"trait_id": "trait_id", ' +
          '"name": "name", ' +
          '"category": "category", ' +
          '"percentile": 0.5, ' +
          '"raw_score": 0.5, ' +
          '"significant": true, ' +
          '"children": [' +
            '{' +
              '"trait_id": "trait_id", ' +
              '"name": "name", ' +
              '"category": "category", ' +
              '"percentile": 0.5, ' +
              '"raw_score": 0.5, ' +
              '"significant": true ' +
            '}' +
          ']' +
        '}' +
      '], ' +
      '"behavior": [' +
        '{' +
          '"trait_id": "trait_id", ' +
          '"name": "name", ' +
          '"category": "category", ' +
          '"percentage": 0.5 ' +
        '}' +
      '], ' +
      '"consumption_preferences": [' +
        '{' +
          '"consumption_preference_category_id": "consumption_preference_category_id", ' +
          '"name": "name"' +
        '}' +
      '], ' +
      '"warnings": [' +
        '{' +
          '"warning_id": "warning_id", ' +
          '"message": "message"' +
        '}' +
      ']' +
    '}';
  }


  // --- Speech to Text v1 ---

  public static testMethod String speechToTextV1SpeechModels() {
    return '{' +
      '"models": [' +
        '{' +
          '"name": "name", ' +
          '"language": "language", ' +
          '"url": "url", ' +
          '"rate": 10, ' +
          '"supported_features": {' +
            '"custom_language_model": true, ' +
            '"speaker_labels": true' +
          '}, ' +
          '"description": "description"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String speechToTextV1SpeechModel() {
    return '{' +
      '"name": "name", ' +
      '"language": "language", ' +
      '"url": "url", ' +
      '"rate": 10, ' +
      '"supported_features": {' +
        '"custom_language_model": true, ' +
        '"speaker_labels": true' +
      '}, ' +
      '"description": "description"' +
    '}';
  }

  public static testMethod String speechToTextV1SpeechRecognitionResults() {
    return ' {' +
      '"results": [' +
        '{' +
          '"word_alternatives": [' +
            '{' +
              '"start_time": 0.5, ' +
              '"alternatives": [' +
                '{' +
                  '"confidence": 0.5, ' +
                  '"word": "word"' +
                '}' +
              '], ' +
              '"end_time": 0.5' +
            '}, ' +
            '{' +
              '"start_time": 5.33, ' +
              '"alternatives": [' +
                '{' +
                  '"confidence": 0.9953, ' +
                  '"word": "Sunday"' +
                '}' +
              '], ' +
              '"end_time": 6.04' +
            '}' +
          '], ' +
          '"keywords_result": {' +
            '"keyword": [' +
              '{' +
                '"normalized_text": "normalized_text", ' +
                '"start_time": 0.5, ' +
                '"confidence": 0.5, ' +
                '"end_time": 0.5' +
              '}' +
            ']' +
          '}, ' +
          '"alternatives": [' +
            '{' +
              '"timestamps": [' +
                '[' +
                  '"timestamps",' +
                ']' +
              '], ' +
              '"word_confidence": [' +
                '[' +
                  '"word_confidence"' +
                ']' +
              ']' +
              '"confidence": 0.5, ' +
              '"transcript": "transcript"' +
            '}' +
          '], ' +
          '"final": true' +
        '}' +
      '], ' +
      '"result_index": 10,' +
      '"audio_metrics": {' +
        '"sampling_interval": 0.5,' +
        '"accumulated": {' +
          '"final": true,' +
          '"end_time": 0.5,' +
          '"speech_ratio": 0.5,' +
          '"high_frequency_loss": 0.5,' +
          '"signal_to_noise_ratio": 0.5,' +
          '"direct_current_offset": [' +
            '{' +
              '"begin": 0.5,' +
              '"end": 0.5,' +
              '"count": 10' +
            '}' +
          '],' +
          '"clipping_rate": [' +
            '{' +
              '"begin": 0.5,' +
              '"end": 0.5,' +
              '"count": 10' +
            '}' +
          '],' +
          '"speech_level": [' +
            '{' +
              '"begin": 0.5,' +
              '"end": 0.5,' +
              '"count": 10' +
            '}' +
          '],' +
          '"non_speech_level": [' +
            '{' +
              '"begin": 0.5,' +
              '"end": 0.5,' +
              '"count": 10' +
            '}' +
          ']' +
        '}' +
      '},' +
      '"processing_metrics": {' +
        '"processed_audio": {' +
          '"received": 0.5,' +
          '"seen_by_engine": 0.5,' +
          '"transcription": 0.5,' +
          '"speaker_labels": 0.5' +
        '},' +
        '"wall_clock_since_first_byte_received": 0.5,' +
        '"periodic": true' +
      '},' +
      '"speaker_labels": [' +
        '{' +
          '"from": 0.5,' +
          '"to": 0.5,' +
          '"speaker": 10,' +
          '"confidence": 0.5,' +
          '"final": true,' +
        '}' +
      '],' +
      '"warnings": [' +
        '"warnings"' +
      ']' +
    '}';
  }

  public static testMethod String speechToTextV1RegisterStatus() {
    return '{' +
      '"status": "status", ' +
      '"url": "url"' +
    '}';
  }

  public static testMethod String speechToTextV1RecognitionJob() {
    return '{' +
      '"id": "id", ' +
      '"status": "status", ' +
      '"created": "created", ' +
      '"updated": "updated", ' +
      '"url": "url", ' +
      '"user_token": "user_token", ' +
      '"results": [' +
        '{' +
          '"result_index": 10, ' +
          '"speaker_labels": [' +
            '{' +
              '"from": 0.5, ' +
              '"to": 0.5, ' +
              '"speaker": 10, ' +
              '"confidence": 0.5, ' +
              '"final": true' +
            '}' +
          '], ' +
          '"processing_metrics": {' +
            '"processed_audio": {' +
              '"received": 0.5,' +
              '"seen_by_engine": 0.5,' +
              '"transcription": 0.5,' +
              '"speaker_labels": 0.5' +
            '},' +
            '"wall_clock_since_first_byte_received": 0.5,' +
            '"periodic": true' +
          '},' +
          '"audio_metrics": {' +
            '"sampling_interval": 0.5,' +
            '"accumulated": {' +
              '"final": true,' +
              '"end_time": 0.5,' +
              '"speech_ratio": 0.5,' +
              '"high_frequency_loss": 0.5,' +
              '"signal_to_noise_ratio": 0.5,' +
              '"direct_current_offset": [' +
                '{' +
                  '"begin": 0.5,' +
                  '"end": 0.5,' +
                  '"count": 10' +
                '}' +
              '],' +
              '"clipping_rate": [' +
                '{' +
                  '"begin": 0.5,' +
                  '"end": 0.5,' +
                  '"count": 10' +
                '}' +
              '],' +
              '"speech_level": [' +
                '{' +
                  '"begin": 0.5,' +
                  '"end": 0.5,' +
                  '"count": 10' +
                '}' +
              '],' +
              '"non_speech_level": [' +
                '{' +
                  '"begin": 0.5,' +
                  '"end": 0.5,' +
                  '"count": 10' +
                '}' +
              ']' +
            '}' +
          '},' +
          '"warnings": [' +
            '"string"' +
          ']' +
        '}' +
      '], ' +
      '"warnings": [' +
        '"string"' +
      ']' +
    '}';
  }

  public static testMethod String speechToTextV1RecognitionJobs() {
    return '{' +
      '"recognitions": [' +
        '{' +
          '"id": "id", ' +
          '"status": "status", ' +
          '"created": "created", ' +
          '"updated": "updated", ' +
          '"url": "url", ' +
          '"user_token": "user_token", ' +
          '"results": [' +
            '{' +
              '"result_index": 10, ' +
              '"speaker_labels": [' +
                '{' +
                  '"from": 0.5, ' +
                  '"to": 0.5, ' +
                  '"speaker": 10, ' +
                  '"confidence": 0.5, ' +
                  '"final": true' +
                '}' +
              '], ' +
              '"processing_metrics": {' +
                '"processed_audio": {' +
                  '"received": 0.5,' +
                  '"seen_by_engine": 0.5,' +
                  '"transcription": 0.5,' +
                  '"speaker_labels": 0.5' +
                '},' +
                '"wall_clock_since_first_byte_received": 0.5,' +
                '"periodic": true' +
              '},' +
              '"audio_metrics": {' +
                '"sampling_interval": 0.5,' +
                '"accumulated": {' +
                  '"final": true,' +
                  '"end_time": 0.5,' +
                  '"speech_ratio": 0.5,' +
                  '"high_frequency_loss": 0.5,' +
                  '"signal_to_noise_ratio": 0.5,' +
                  '"direct_current_offset": [' +
                    '{' +
                      '"begin": 0.5,' +
                      '"end": 0.5,' +
                      '"count": 10' +
                    '}' +
                  '],' +
                  '"clipping_rate": [' +
                    '{' +
                      '"begin": 0.5,' +
                      '"end": 0.5,' +
                      '"count": 10' +
                    '}' +
                  '],' +
                  '"speech_level": [' +
                    '{' +
                      '"begin": 0.5,' +
                      '"end": 0.5,' +
                      '"count": 10' +
                    '}' +
                  '],' +
                  '"non_speech_level": [' +
                    '{' +
                      '"begin": 0.5,' +
                      '"end": 0.5,' +
                      '"count": 10' +
                    '}' +
                  ']' +
                '}' +
              '},' +
              '"warnings": [' +
                '"string"' +
              ']' +
            '}' +
          '], ' +
          '"warnings": [' +
            '"string"' +
          ']' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String speechToTextV1LanguageModel() {
    return '{' +
      '"owner": "owner", ' +
      '"base_model_name": "base_model_name", ' +
      '"customization_id": "customization_id", ' +
      '"dialect": "dialect", ' +
      '"created": "created", ' +
      '"name": "name", ' +
      '"description": "description", ' +
      '"progress": 10, ' +
      '"language": "language", ' +
      '"status": "status", ' +
      '"dialect": "dialect", ' +
      '"warnings": "warnings",' +
      '"error": "error",' +
      '"versions": [' +
        '"versions"' +
      ']' +
      '"updated": "updated"' +
    '}';
  }

  public static testMethod String speechToTextV1LanguageModels() {
    return '{' +
      '"customizations": [' +
        '{' +
          '"owner": "owner", ' +
          '"base_model_name": "base_model_name", ' +
          '"customization_id": "customization_id", ' +
          '"dialect": "dialect", ' +
          '"created": "created", ' +
          '"name": "name", ' +
          '"description": "description", ' +
          '"progress": 10, ' +
          '"language": "language", ' +
          '"status": "status", ' +
          '"dialect": "dialect", ' +
          '"warnings": "warnings",' +
          '"error": "error",' +
          '"versions": [' +
            '"versions"' +
          ']' +
          '"updated": "updated"' +
        '}' +
      ']' +
    '}';
  }
  
  public static testMethod String speechToTextV1TrainingResponse() {
    return '{' +
      '"warnings": [' +
        '{' +
          '"code": "code",' +
          '"message": "message"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String speechToTextV1Corpora() {
    return '{' +
      '"corpora": [' +
        '{' +
          '"out_of_vocabulary_words": 10, ' +
          '"total_words": 10, ' +
          '"name": "name", ' +
          '"status": "status",' +
          '"error": "error"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String speechToTextV1Corpus() {
    return '{' +
      '"out_of_vocabulary_words": 10, ' +
      '"total_words": 10, ' +
      '"name": "name", ' +
      '"status": "status",' +
      '"error": "error"' +
    '}';
  }

  public static testMethod String speechToTextV1Words() {
    return '{' +
      '"words": [' +
        '{' +
          '"display_as": "display_as", ' +
          '"sounds_like": [' +
            '"sounds_like"' +
          '], ' +
          '"count": 10, ' +
          '"source": [' +
            '"source"' +
          '], ' +
          '"error": [' +
            '{' +
              '"element": "element"' +
            '}' +
          '],' +
          '"word": "word"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String speechToTextV1Word() {
    return '{' +
      '"display_as": "display_as", ' +
      '"sounds_like": [' +
        '"sounds_like"' +
      '], ' +
      '"count": 10, ' +
      '"source": [' +
        '"source"' +
      '], ' +
      '"error": [' +
        '{' +
          '"element": "element"' +
        '}' +
      '],' +
      '"word": "word"' +
    '}';
  }

  public static testMethod String speechToTextV1Grammars() {
    return '{' +
      '"grammars": [' +
        '{' +
          '"out_of_vocabulary_words": 10,' +
          '"name": "name",' +
          '"status": "status",' +
          '"error": "error"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String speechToTextV1Grammar() {
    return '{' +
      '"out_of_vocabulary_words": 10,' +
      '"name": "name",' +
      '"status": "status",' +
      '"error": "error"' +
    '}';
  }

  public static testMethod String speechToTextV1AcousticModel() {
    return '{' +
      '"owner": "owner", ' +
      '"base_model_name": "base_model_name", ' +
      '"customization_id": "customization_id", ' +
      '"created": "created", ' +
      '"name": "name", ' +
      '"description": "description", ' +
      '"versions": [' +
        '"versions"' +
      ']' +
      '"progress": 10, ' +
      '"language": "language", ' +
      '"status": "status", ' +
      '"warnings": "warnings",' +
      '"updated": "updated"' +
    '}';
  }
  
  public static testMethod String speechToTextV1AcousticModels() {
    return '{' +
      '"customizations": [' +
        '{' +
          '"owner": "owner", ' +
          '"base_model_name": "base_model_name", ' +
          '"customization_id": "customization_id", ' +
          '"created": "created", ' +
          '"name": "name", ' +
          '"description": "description", ' +
          '"versions": [' +
            '"versions"' +
          ']' +
          '"progress": 10, ' +
          '"language": "language", ' +
          '"status": "status", ' +
          '"warnings": "warnings",' +
          '"updated": "updated"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String speechToTextV1AudioResources() {
    return '{' +
      '"total_minutes_of_audio": 0.5,' +
      '"audio": [' +
        '{' +
          '"duration": 10, ' +
          '"name": "name", ' +
          '"details": {' +
            '"type": "type", ' +
            '"codec": "codec", ' +
            '"frequency": 10, ' +
            '"compression": "compression"' +
          '}, ' +
          '"status": "status"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String speechToTextV1AudioListing() {
    return '{' +
      '"duration": 10, ' +
      '"name": "string", ' +
      '"details": {' +
        '"type": "type", ' +
        '"codec": "codec", ' +
        '"frequency": 10, ' +
        '"compression": "compression"' +
      '}, ' +
      '"status": "status", ' +
      '"container": {' +
        '"duration": 10, ' +
        '"name": "name", ' +
        '"details": {' +
          '"type": "type", ' +
          '"codec": "codec", ' +
          '"frequency": 10, ' +
          '"compression": "compression"' +
        '},' +
        '"status": "status"' +
      '},' +
      '"audio": [' +
        '{' +
          '"duration": 10, ' +
          '"name": "name", ' +
          '"details": {' +
            '"type": "type", ' +
            '"codec": "codec", ' +
            '"frequency": 10, ' +
            '"compression": "compression"' +
          '}, ' +
          '"status": "status"' +
        '}' +
      ']' +
    '}';
  }


  // --- Text to Speech v1 ---

  public static testMethod String textToSpeechV1Voices() {
    return '{' +
      '"voices": [' +
        '{' +
          '"url": "url", ' +
          '"gender": "gender", ' +
          '"name": "name", ' +
          '"language": "language", ' +
          '"description": "description", ' +
          '"customizable": true, ' +
          '"supported_features": {' +
            '"custom_pronunciation": true, ' +
            '"voice_transformation": true' +
          '}, ' +
          '"customization": {' +
            '"customization_id": "customization_id", ' +
            '"name": "name", ' +
            '"language": "language", ' +
            '"owner": "owner", ' +
            '"created": "created", ' +
            '"last_modified": "last_modified", ' +
            '"description": "description", ' +
            '"words": [' +
              '{' +
                '"word": "word", ' +
                '"translation": "translation", ' +
                '"part_of_speech": "part_of_speech"' +
              '}' +
            ']' +
          '}' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String textToSpeechV1Voice() {
    return '{' +
      '"url": "url", ' +
      '"gender": "gender", ' +
      '"name": "name", ' +
      '"language": "language", ' +
      '"description": "description", ' +
      '"customizable": true, ' +
      '"supported_features": {' +
        '"custom_pronunciation": true, ' +
        '"voice_transformation": true' +
      '}, ' +
      '"customization": {' +
        '"customization_id": "customization_id", ' +
        '"name": "name", ' +
        '"language": "language", ' +
        '"owner": "owner", ' +
        '"created": "created", ' +
        '"last_modified": "last_modified", ' +
        '"description": "description", ' +
        '"words": [' +
          '{' +
            '"word": "word", ' +
            '"translation": "translation", ' +
            '"part_of_speech": "part_of_speech"' +
          '}' +
        ']' +
      '}' +
    '}';
  }

  public static testMethod String textToSpeechV1Pronunciation() {
    return '{' +
      '"pronunciation": "pronunciation"' +
    '}';
  }

  public static testMethod String textToSpeechV1VoiceModel() {
    return '{' +
      '"customization_id": "customization_id", ' +
      '"name": "name", ' +
      '"language": "language", ' +
      '"owner": "owner", ' +
      '"created": "created", ' +
      '"last_modified": "last_modified", ' +
      '"description": "description", ' +
      '"words": [' +
        '{' +
          '"word": "word", ' +
          '"translation": "translation", ' +
          '"part_of_speech": "part_of_speech"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String textToSpeechV1VoiceModels() {
    return '{' +
      '"customizations": [' +
        '{' +
          '"customization_id": "customization_id", ' +
          '"name": "name", ' +
          '"language": "language", ' +
          '"owner": "owner", ' +
          '"created": "created", ' +
          '"last_modified": "last_modified", ' +
          '"description": "description", ' +
          '"words": [' +
            '{' +
              '"word": "word", ' +
              '"translation": "translation", ' +
              '"part_of_speech": "part_of_speech"' +
            '}' +
          ']' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String textToSpeechV1Words() {
    return '{' +
      '"words": [' +
        '{' +
          '"word": "word", ' +
          '"translation": "translation", ' +
          '"part_of_speech": "part_of_speech"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String textToSpeechV1Translation() {
    return '{' +
      '"translation": "translation", ' +
      '"part_of_speech": "part_of_speech"' +
    '}';
  }


  // --- Tone Analyzer v3 ---

  public static testMethod String toneAnalyzerV3ToneAnalysis() {
    return  '{' +
      '"document_tone": {' +
        '"tones": [' +
          '{' +
            '"score": 0.5, ' +
            '"tone_id": "tone_id", ' +
            '"tone_name": "tone_name"' +
          '}' +
        '], ' +
        '"tone_categories": [' +
          '{' +
            '"tones": [' +
              '{' +
                '"score": 0.5, ' +
                '"tone_id": "tone_id", ' +
                '"tone_name": "tone_name"' +
              '}' +
            '], ' +
            '"category_id": "category_id", ' +
            '"category_name": "category_name"' +
          '}' +
        '], ' +
        '"warning": "warning"' +
      '}, ' +
      '"sentences_tone": [' +
        '{' +
          '"sentence_id": 10, ' +
          '"text": "text", ' +
          '"tones": [' +
            '{' +
              '"score": 0.5, ' +
              '"tone_id": "tone_id", ' +
              '"tone_name": "tone_name"' +
            '}' +
          '], ' +
          '"tone_categories": [' +
            '{' +
              '"tones": [' +
                '{' +
                  '"score": 0.5, ' +
                  '"tone_id": "tone_id", ' +
                  '"tone_name": "tone_name"' +
                '}' +
              '], ' +
              '"category_id": "category_id", ' +
              '"category_name": "category_name"' +
            '}' +
          '], ' +
          '"input_from": 10, ' +
          '"input_to": 10' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String toneAnalyzerV3UtteranceAnalyses() {
    return  '{' +
      '"utterances_tone": [' +
        '{' +
          '"utterance_id": 10, ' +
          '"utterance_text": "utterance_text", ' +
          '"tones": [' +
            '{' +
              '"score": 0.5, ' +
              '"tone_id": "tone_id", ' +
              '"tone_name": "tone_name"' +
            '}' +
          '], ' +
          '"error": "error"' +
        '}' +
      '], ' +
      '"warning": "warning"' +
    '}';
  }


  // --- Visual Recognition v3 ---

  public static testMethod String visualRecognitionV3ClassifiedImages() {
    return  '{' +
      '"custom_classes": 10, ' +
      '"images_processed": 10, ' +
      '"images": [' +
        '{' +
          '"source_url": "source_url", ' +
          '"resolved_url": "resolved_url", ' +
          '"image": "image", ' +
          '"error": {' +
            '"code": 10, ' +
            '"error_id": "error_id", ' +
            '"description": "description"' +
          '}, ' +
          '"classifiers": [' +
            '{' +
              '"name": "name", ' +
              '"classifier_id": "classifier_id", ' +
              '"classes": [' +
                '{' +
                  '"class": "class", ' +
                  '"score": 0.5, ' +
                  '"type_hierarchy": "type_hierarchy"' +
                '}' +
              ']' +
            '}' +
          ']' +
        '}' +
      '], ' +
      '"warnings": [' +
        '{' +
          '"warning_id": "warning_id", ' +
          '"description": "description"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String visualRecognitionV3Classifier() {
    return  '{' +
      '"classifier_id": "classifier_id", ' +
      '"name": "name", ' +
      '"owner": "owner", ' +
      '"status": "status", ' +
      '"explanation": "explanation", ' +
      '"created": "1995-06-12T01:11:11.111Z", ' +
      '"retrained": "1995-06-12T01:11:11.111Z", ' +
      '"updated": "1995-06-12T01:11:11.111Z", ' +
      '"classes": [' +
        '{' +
          '"class": "class"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String visualRecognitionV3Classifiers() {
    return  '{' +
      '"classifiers": [' +
        '{' +
          '"classifier_id": "classifier_id", ' +
          '"name": "name", ' +
          '"owner": "owner", ' +
          '"status": "status", ' +
          '"explanation": "explanation", ' +
          '"created": "1995-06-12T01:11:11.111Z", ' +
          '"retrained": "1995-06-12T01:11:11.111Z", ' +
          '"updated": "1995-06-12T01:11:11.111Z", ' +
          '"classes": [' +
            '{' +
              '"class": "class"' +
            '}' +
          ']' +
        '}' +
      ']' +
    '}';
  }


  // --- Visual Recognition v4 ---

  public static testMethod String visualRecognitionV4AnalyzeResponse() {
    return '{' +
      '"images": [' +
        '{' +
          '"source": {' +
            '"type": "type",' +
            '"filename": "filename",' +
            '"archive_filename": "archive_filename",' +
            '"source_url": "source_url",' +
            '"resolved_url": "resolved_url"' +
          '},' +
          '"dimensions": {' +
            '"height": 10,' +
            '"width": 10' +
          '},' +
          '"objects": {' +
            '"collections": [' +
              '{' +
                '"collection_id": "collection_id",' +
                '"objects": [' +
                  '{' +
                    '"object": "object",' +
                    '"location": {' +
                      '"top": 10,' +
                      '"left": 10,' +
                      '"width": 10,' +
                      '"height": 10' +
                    '},' +
                    '"score": 0.5' +
                  '}' +
                ']' +
              '}' +
            ']' +
          '},' +
          '"errors": {' +
            '"code": "code",' +
            '"message": "message",' +
            '"more_info": "more_info",' +
            '"target": {' +
              '"type": "type",' +
              '"name": "name"' +
            '}' +
          '}' +
        '}' +
      '],' +
      '"warnings": [' +
        '{' +
          '"code": "code",' +
          '"message": "message",' +
          '"more_info": "more_info"' +
        '}' +
      '],' +
      '"trace": "trace"' +
    '}';
  }

  public static testMethod String visualRecognitionV4Collection() {
    return '{' +
      '"collection_id": "collection_id",' +
      '"name": "name",' +
      '"description": "description",' +
      '"created": "1995-06-12T01:11:11.111Z",' +
      '"updated": "1995-06-12T01:11:11.111Z",' +
      '"image_count": 10,' +
      '"training_status": {' +
        '"objects": {' +
          '"ready": true,' +
          '"in_progress": true,' +
          '"data_changed": true,' +
          '"latest_failed": true,' +
          '"description": "description"' +
        '}' +
      '}' +
    '}';
  }

  public static testMethod String visualRecognitionV4CollectionsList() {
    return '{' +
      '"collections": [' +
        '{' +
          '"collection_id": "collection_id",' +
          '"name": "name",' +
          '"description": "description",' +
          '"created": "1995-06-12T01:11:11.111Z",' +
          '"updated": "1995-06-12T01:11:11.111Z",' +
          '"image_count": 10,' +
          '"training_status": {' +
            '"objects": {' +
              '"ready": true,' +
              '"in_progress": true,' +
              '"data_changed": true,' +
              '"latest_failed": true,' +
              '"description": "description"' +
            '}' +
          '}' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String visualRecognitionV4ImageDetails() {
    return '{' +
      '"image_id": "image_id",' +
      '"updated": "1995-06-12T01:11:11.111Z",' +
      '"created": "1995-06-12T01:11:11.111Z",' +
      '"source": {' +
        '"type": "type",' +
        '"filename": "filename",' +
        '"archive_filename": "archive_filename",' +
        '"source_url": "source_url",' +
        '"resolved_url": "resolved_url"' +
      '},' +
      '"dimensions": {' +
        '"height": 10,' +
        '"width": 10' +
      '},' +
      '"errors": {' +
        '"code": "code",' +
        '"message": "message",' +
        '"more_info": "more_info",' +
        '"target": {' +
          '"type": "type",' +
          '"name": "name"' +
        '}' +
      '},' +
      '"training_data": {' +
        '"objects": [' +
          '{' +
            '"object": "object",' +
            '"location": {' +
              '"top": 10,' +
              '"left": 10,' +
              '"width": 10,' +
              '"height": 10' +
            '}' +
          '}' +
        ']' +
      '}' +
    '}';
  }

  public static testMethod String visualRecognitionV4ImageDetailsList() {
    return '{' +
      '"images": [' +
        '{' +
          '"image_id": "image_id",' +
          '"updated": "1995-06-12T01:11:11.111Z",' +
          '"created": "1995-06-12T01:11:11.111Z",' +
          '"source": {' +
            '"type": "type",' +
            '"filename": "filename",' +
            '"archive_filename": "archive_filename",' +
            '"source_url": "source_url",' +
            '"resolved_url": "resolved_url"' +
          '},' +
          '"dimensions": {' +
            '"height": 10,' +
            '"width": 10' +
          '},' +
          '"errors": {' +
            '"code": "code",' +
            '"message": "message",' +
            '"more_info": "more_info",' +
            '"target": {' +
              '"type": "type",' +
              '"name": "name"' +
            '}' +
          '},' +
          '"training_data": {' +
            '"objects": [' +
              '{' +
                '"object": "object",' +
                '"location": {' +
                  '"top": 10,' +
                  '"left": 10,' +
                  '"width": 10,' +
                  '"height": 10' +
                '}' +
              '}' +
            ']' +
          '}' +
        '}' +
      '],' +
      '"warnings": [' +
        '{' +
          '"code": "code",' +
          '"message": "message",' +
          '"more_info": "more_info"' +
        '}' +
      '],' +
      '"trace": "trace"' +
    '}';
  }

  public static testMethod String visualRecognitionV4ImageSummaryList() {
    return '{' +
      '"images": [' +
        '{' +
          '"image_id": "image_id",' +
          '"updated": "1995-06-12T01:11:11.111Z"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String visualRecognitionV4TrainingDataObjects() {
    return '{' +
      '"objects": [' +
        '{' +
          '"object": "object",' +
          '"location": {' +
            '"top": 10,' +
            '"left": 10,' +
            '"width": 10,' +
            '"height": 10' +
          '}' +
        '}' +
      ']' +
    '}';
  }


  // --- Miscellaneous ---

  public static testMethod String validTokenData() {
    return '{' +
      '"access_token": "aaaa-1111",' +
      '"refresh_token": "99999999",' +
      '"token_type": "Bearer",' +
      '"expires_in": 3600,' +
      '"expiration": 999999999999999999' +
    '}';
  }

  public static testMethod String expiredTokenData() {
    return '{' +
      '"access_token": "wxyz-9876",' +
      '"refresh_token": "00000000",' +
      '"token_type": "Bearer",' +
      '"expires_in": 3600,' +
      '"expiration": 10000' +
    '}';
  }

  public static testMethod String validICP4DToken() {
    return '{' +
      '"username": "admin",' +
      '"role": "Admin",' +
      '"permissions": [' +
        '"administrator",' +
        '"manage_catalog",' +
        '"access_catalog",' +
        '"manage_policies",' +
        '"access_policies",' +
        '"virtualize_transform",' +
        '"can_provision",' +
        '"deployment_admin"' +
      '],' +
      '"sub": "admin",' +
      '"iss": "test",' +
      '"aud": "DSX",' +
      '"uid": "999",' +
      '"accessToken": "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImFkbWluIiwicm9sZSI6IkFkbWluIiwicGVybWlzc2lvbnMiOlsiYWRtaW5pc3RyYXRvciIsIm1hbmFnZV9jYXRhbG9nIiwiYWNjZXNzX2NhdGFsb2ciLCJtYW5hZ2VfcG9saWNpZXMiLCJhY2Nlc3NfcG9saWNpZXMiLCJ2aXJ0dWFsaXplX3RyYW5zZm9ybSIsImNhbl9wcm92aXNpb24iLCJkZXBsb3ltZW50X2FkbWluIl0sInN1YiI6ImFkbWluIiwiaXNzIjoiS05PWFNTTyIsImF1ZCI6IkRTWCIsInVpZCI6Ijk5OSIsImlhdCI6MTU1OTMyODk1NSwiZXhwIjo5OTk5OTk5OTk5OTk5OTk5OTl9.GE-ML3JWmI3oB0z5mjMG3jFtYVVA5bQCsOTOOj9ab7PcgJc1mA5hn1sONkO0JAFADhUoAgpG4KgQef5tjnCSrtl1tbnDuhaP1DH4QKMCZOkWrKyfQ2X8P1jhyJmV-KpE4wuTrGdMoMVj4wVRZwnxMRSK6LhV6pIzyOLLYR21zcW_2KcKWxCYfIC7tiM1d2PSM5nWa_5Vb068F8PtdiFUElEYHYKrvmwpV57_k2jpXoY6zw8PDcIiWQe3g20w6vCB6zWhxbcFWyjMg1tPOZHgTNNskPShHQBbtZFsSrc7rkNPzttKF70m7_JqrRYUZDNN8TmuR9uyitwxEFkr2L0WDQ",' +
      '"_messageCode_": "success",' +
      '"message": "success"' +
    '}'; 
  }

  public static testMethod String expiredICP4DToken() {
    return '{' +
      '"username": "admin",' +
      '"role": "Admin",' +
      '"permissions": [' +
        '"administrator",' +
        '"manage_catalog",' +
        '"access_catalog",' +
        '"manage_policies",' +
        '"access_policies",' +
        '"virtualize_transform",' +
        '"can_provision",' +
        '"deployment_admin"' +
      '],' +
      '"sub": "admin",' +
      '"iss": "test",' +
      '"aud": "DSX",' +
      '"uid": "999",' +
      '"accessToken": "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImFkbWluIiwicm9sZSI6IkFkbWluIiwicGVybWlzc2lvbnMiOlsiYWRtaW5pc3RyYXRvciIsIm1hbmFnZV9jYXRhbG9nIiwiYWNjZXNzX2NhdGFsb2ciLCJtYW5hZ2VfcG9saWNpZXMiLCJhY2Nlc3NfcG9saWNpZXMiLCJ2aXJ0dWFsaXplX3RyYW5zZm9ybSIsImNhbl9wcm92aXNpb24iLCJkZXBsb3ltZW50X2FkbWluIl0sInN1YiI6ImFkbWluIiwiaXNzIjoiS05PWFNTTyIsImF1ZCI6IkRTWCIsInVpZCI6Ijk5OSIsImlhdCI6MTU1OTMyODk1NSwiZXhwIjoxNTU5MzI4OTU1fQ==.GE-ML3JWmI3oB0z5mjMG3jFtYVVA5bQCsOTOOj9ab7PcgJc1mA5hn1sONkO0JAFADhUoAgpG4KgQef5tjnCSrtl1tbnDuhaP1DH4QKMCZOkWrKyfQ2X8P1jhyJmV-KpE4wuTrGdMoMVj4wVRZwnxMRSK6LhV6pIzyOLLYR21zcW_2KcKWxCYfIC7tiM1d2PSM5nWa_5Vb068F8PtdiFUElEYHYKrvmwpV57_k2jpXoY6zw8PDcIiWQe3g20w6vCB6zWhxbcFWyjMg1tPOZHgTNNskPShHQBbtZFsSrc7rkNPzttKF70m7_JqrRYUZDNN8TmuR9uyitwxEFkr2L0WDQ",' +
      '"_messageCode_": "success",' +
      '"message": "success"' +
    '}';
  }
}
