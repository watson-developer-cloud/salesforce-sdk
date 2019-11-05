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

  public static testMethod String collectionTrained() {
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
            '    "failed": 0,' +
            '    "pending": 100' +
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
  
   public static testMethod String listModelsResults() {
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
  
  public static testMethod String profile() {
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
  public static testMethod String toneAnalysis() {
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
  
  public static testMethod String utteranceAnalyses() {
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
  
  public static testMethod String classifiedImages() {
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

  public static testMethod String classifiers() {
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
  public static testMethod String classifier() {
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
  
  public static testMethod String voices() {
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
  
  public static testMethod String voice() {
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
  
  public static testMethod String pronunciation() {
    return '{' +
           '  "pronunciation": "string"' +
           '}';
  }
  
  public static testMethod String voiceModels() {
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
  
  public static testMethod String voiceModel() {
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
  
  public static testMethod String words() {
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
  
  public static testMethod String word() {
    return '{' +
           '  "word": "string", ' +
           '  "translation": "string", ' +
           '  "part_of_speech": "Josi"' +
           '}';
  }

  public static testMethod String speechToTextListModels() {
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
  
  public static testMethod String speechToTextGetModel() {
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
  
  public static testMethod String speechToTextCreateJob() {
    return '{' +
      ' "created": "2017-12-13T16:11:55.815Z", ' +
      ' "id": "56d09f2c-e020-11e7-9ee3-33bf91161141", ' +
      ' "url": "https://stream.watsonplatform.net/speech-to-text/api/v1/recognitions/56d09f2c-e020-11e7-9ee3-33bf91161141", ' +
      ' "status": "processing"' +
    '}';
  }
  
  public static testMethod String speechToTextCheckJobCreate() {
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
           '                [' +
           '                  "thunderstorms", ' +
           '                  1.49, ' +
           '                  2.32 ' +
           '                ]' +
           '              ], ' +
           '              "word_confidence": [ ' +
           '                [' +
           '                  "thunderstorms", ' +
           '                  1' +
           '                ]' +
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
  
  public static testMethod String speechToTextCheckJob() {
    return '{' +
      ' "created": "2017-12-13T16:11:55.815Z", ' +
      ' "id": "56d09f2c-e020-11e7-9ee3-33bf91161141", ' +
      ' "updated": "2017-12-13T16:11:57.393Z", ' +
      ' "status": "failed"' +
      '}';
  }
  
  public static testMethod String speechToTextCheckJobs() {
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
  
  public static testMethod String speechToTextDeleteJob() {
    return '{}';
  }
  
  public static testMethod String speechToTextRegisterCallback() {
    return '{' +
    ' "status": "created", ' +
    ' "url": "https://ibmdf17-watson-dxhub.my.salesforce.com/"' +
    '}';
  }
  
  public static testMethod String speechToTextUnRegisterCallback() {
    return '{}';
  }
  
  public static testMethod String speechToTextListLanguageModels() {
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
  
  public static testMethod String speechToTextGetLanguageModel() {
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
      ' "warnings": "customization",' +
      ' "updated": "2019-10-11T19:16:58.547Z"' +
      ' }';
  }
  
  public static testMethod String speechToTextTrainLanguageModel() {
    return '{' +
      '"warnings": [' +
        '{' +
          '"description": "description",' +
          '"warning_id": "warning_id"' +
        '}' +
      ']' +
    '}';
  }
  
  public static testMethod String speechToTextUpgradeLanguageModel() {
    return '{}';
  }
  
  public static testMethod String speechToTextResetLanguageModel() {
    return '{}';
  }

  public static testMethod String speechToTextDeleteLanguageModel() {
    return '{}';
  }

  public static testMethod String speechToTextListCorpora() {
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

  public static testMethod String speechToTextGetCorpus() {
    return '{' +
      ' "out_of_vocabulary_words": 3, ' +
      ' "total_words": 160, ' +
      ' "name": "custom_corpus", ' +
      ' "status": "analyzed", ' +
      ' "error": "none"' +
      '}';
  }

  public static testMethod String speechToTextDeleteCorpus() {
    return '{}';
  }
  
  public static testMethod String speechToTextAddCorpus() {
    return '{}';
  }

  public static testMethod String speechToTextDeleteWord() {
    return '{}';
  }

  public static testMethod String speechToTextGetWord() {
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
  
  public static testMethod String speechToTextListWords() {
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
  
  
  public static testMethod String speechToTextListAcousticModels() {
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
  
  public static testMethod String speechToTextGetAcousticModel() {
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
      ' "warnings": "customization",' +
      ' "updated": "2019-10-11T19:16:58.547Z"' +
      '}';
  }

  public static testMethod String speechToTextDeleteAcousticModel() {
    return '{}';
  }
  
  public static testMethod String speechToTextTrainAcousticModel() {
    return '{}';
  }

  public static testMethod String speechToTextResetAcousticModel() {
    return '{}';
  }

  public static testMethod String speechToTextDeleteAudio() {
    return '{}';
  }
  
  public static testMethod String speechToTextGetAudio() {
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
  
  public static testMethod String speechToTextListAudio() {
    return '{}';
  }
  
  public static testMethod String speechToTextAddAudio() {
    return '{}';
  }
  
  public static testMethod String speechToTextAddWord() {
    return '{}';
  }
  
  public static testMethod String speechToTextCreateAcousticModel() {
    return '{}';
  }
  
  public static testMethod String speechToTextCreateLanguageModel() {
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

  public static testMethod String speechToTextRecognize() {
    return ' {' +
      '"results": [' +
      '  {' +
      '    "word_alternatives": [' +
      '      {' +
      '        "start_time": 0.14, ' +
      '        "alternatives": [' +
      '          {' +
      '            "confidence": 1, ' +
      '            "word": "a"' +
      '          }' +
      '        ], ' +
      '        "end_time": 0.28' +
      '      }, ' +
      '      {' +
      '        "start_time": 5.33, ' +
      '        "alternatives": [' +
      '          {' +
      '            "confidence": 0.9953, ' +
      '            "word": "Sunday"' +
      '          }' +
      '        ], ' +
      '        "end_time": 6.04' +
      '      }' +
      '    ], ' +
      '    "keywords_result": {' +
      '      "tornadoes": [' +
      '        {' +
      '          "normalized_text": "tornadoes", ' +
      '          "start_time": 3.03, ' +
      '          "confidence": 0.953, ' +
      '          "end_time": 3.85' +
      '        }' +
      '      ], ' +
      '      "colorado": [' +
      '        {' +
      '          "normalized_text": "Colorado", ' +
      '          "start_time": 4.59, ' +
      '          "confidence": 0.999, ' +
      '          "end_time": 5.18' +
      '        }' +
      '      ]' +
      '    }, ' +
      '    "alternatives": [' +
      '      {' +
      '        "timestamps": [' +
      '          [' +
      '            "a", ' +
      '            0.14, ' +
      '            0.28' +
      '          ], ' +
      '          [' +
      '            "Sunday", ' +
      '            5.33, ' +
      '            6.04' +
      '          ]' +
      '        ], ' +
      '        "confidence": 0.983, ' +
      '        "transcript": "a line of severe thunderstorms with several possible tornadoes is approaching Colorado on Sunday "' +
      '      }' +
      '    ], ' +
      '    "final": true' +
      '  }' +
      '], ' +
      '"result_index": 0,' +
      '"audio_metrics": {' +
        '"sampling_interval": 0.1,' +
        '"accumulated": {' +
          '"final": true,' +
          '"end_time": 0.2,' +
          '"speech_ratio": 0.4,' +
          '"high_frequency_loss": 0.5,' +
          '"signal_to_noise_ratio": 0.3,' +
          '"direct_current_offset": [' +
            '{' +
              '"begin": 3.1,' +
              '"end": 6.2,' +
              '"count": 10' +
            '}' +
          '],' +
          '"clipping_rate": [' +
            '{' +
              '"begin": 3.1,' +
              '"end": 6.2,' +
              '"count": 10' +
            '}' +
          '],' +
          '"speech_level": [' +
            '{' +
              '"begin": 3.1,' +
              '"end": 6.2,' +
              '"count": 10' +
            '}' +
          '],' +
          '"non_speech_level": [' +
            '{' +
              '"begin": 3.1,' +
              '"end": 6.2,' +
              '"count": 10' +
            '}' +
          ']' +
        '}' +
      '},' +
      '"processing_metrics": {' +
        '"processed_audio": {' +
          '"received": 300.0,' +
          '"seen_by_engine": 400.0,' +
          '"transcription": 500.0,' +
          '"speaker_labels": 600.0' +
        '},' +
        '"wall_clock_since_first_byte_received": 47.0,' +
        '"periodic": true' +
      '}' +
    '}';
  }
  
  public static testMethod String expansionsResponse() {
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

  public static testMethod String credentials() {
    return '{' +
      '"credential_id" : "00000d8c-0000-00e8-ba89-0ed5f89f718b",' +
      '"source_type" : "salesforce",' +
      '"credential_details" : {' +
        '"credential_type" : "username_password",' +
        '"url" : "login.salesforce.com",' +
        '"username" : "user@email.address"' +
      '},' +
      '"status" : "connected"' +
    '}';
  }

  public static testMethod String mentions() {
    return '{' +
      '"examples" : [ {' +
        '"text" : "I would like to order a pizza",' +
        '"intent" : "FoodTypes",' +
        '"location" : [ 20, 24 ]' +
      '} ]' +
    '}';
  }

  public static testMethod String listGrammarsResponse() {
    return '{' +
      '"grammars": [' +
        '{' +
          '"out_of_vocabulary_words": 10,' +
          '"name": "name_1",' +
          '"status": "analyzed"' +
        '},' +
        '{' +
          '"out_of_vocabulary_words": 20,' +
          '"name": "name_2",' +
          '"status": "analyzed"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String getGrammarResponse() {
    return '{' +
      '"out_of_vocabulary_words": 10,' +
      '"name": "grammar_name",' +
      '"status": "analyzed"' +
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

  public static testMethod String analyzeResponse() {
    return '{' +
      '"images": [' +
        '{' +
          '"source": {' +
            '"type": "file",' +
            '"filename": "filename",' +
            '"archive_filename": "archive_filename",' +
            '"source_url": "source_url",' +
            '"resolved_url": "resolved_url"' +
          '},' +
          '"dimensions": {' +
            '"height": 200,' +
            '"width": 100' +
          '},' +
          '"objects": {' +
            '"collections": [' +
              '{' +
                '"collection_id": "123456789",' +
                '"objects": [' +
                  '{' +
                    '"object": "object",' +
                    '"location": {' +
                      '"top": 0,' +
                      '"left": 10,' +
                      '"width": 100,' +
                      '"height": 200' +
                    '},' +
                    '"score": 5.0' +
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
              '"type": "field",' +
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

  public static testMethod String visRecCollection() {
    return '{' +
      '"collection_id": "123456789",' +
      '"name": "name",' +
      '"description": "description",' +
      '"created": "1995-06-12T01:11:11.111Z",' +
      '"updated": "1995-06-12T01:11:11.111Z",' +
      '"image_count": 50,' +
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

  public static testMethod String collectionsList() {
    return '{' +
      '"collections": [' +
        '{' +
          '"collection_id": "123456789",' +
          '"name": "name",' +
          '"description": "description",' +
          '"created": "1995-06-12T01:11:11.111Z",' +
          '"updated": "1995-06-12T01:11:11.111Z",' +
          '"image_count": 50,' +
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

  public static testMethod String imageDetails() {
    return '{' +
      '"image_id": "image_id",' +
      '"updated": "1995-06-12T01:11:11.111Z",' +
      '"created": "1995-06-12T01:11:11.111Z",' +
      '"source": {' +
        '"type": "file",' +
        '"filename": "filename",' +
        '"archive_filename": "archive_filename",' +
        '"source_url": "source_url",' +
        '"resolved_url": "resolved_url"' +
      '},' +
      '"dimensions": {' +
        '"height": 200,' +
        '"width": 100' +
      '},' +
      '"errors": {' +
        '"code": "code",' +
        '"message": "message",' +
        '"more_info": "more_info",' +
        '"target": {' +
          '"type": "field",' +
          '"name": "name"' +
        '}' +
      '},' +
      '"training_data": {' +
        '"objects": [' +
          '{' +
            '"object": "object",' +
            '"location": {' +
              '"top": 0,' +
              '"left": 10,' +
              '"width": 100,' +
              '"height": 200' +
            '}' +
          '}' +
        ']' +
      '}' +
    '}';
  }

  public static testMethod String imageDetailsList() {
    return '{' +
      '"images": [' +
        '{' +
          '"image_id": "image_id",' +
          '"updated": "1995-06-12T01:11:11.111Z",' +
          '"created": "1995-06-12T01:11:11.111Z",' +
          '"source": {' +
            '"type": "file",' +
            '"filename": "filename",' +
            '"archive_filename": "archive_filename",' +
            '"source_url": "source_url",' +
            '"resolved_url": "resolved_url"' +
          '},' +
          '"dimensions": {' +
            '"height": 200,' +
            '"width": 100' +
          '},' +
          '"errors": {' +
            '"code": "code",' +
            '"message": "message",' +
            '"more_info": "more_info",' +
            '"target": {' +
              '"type": "field",' +
              '"name": "name"' +
            '}' +
          '},' +
          '"training_data": {' +
            '"objects": [' +
              '{' +
                '"object": "object",' +
                '"location": {' +
                  '"top": 0,' +
                  '"left": 10,' +
                  '"width": 100,' +
                  '"height": 200' +
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

  public static testMethod String imageSummaryList() {
    return '{' +
      '"images": [' +
        '{' +
          '"image_id": "image_id",' +
          '"updated": "1995-06-12T01:11:11.111Z"' +
        '}' +
      ']' +
    '}';
  }

  public static testMethod String trainingDataObjects() {
    return '{' +
      '"objects": [' +
        '{' +
          '"object": "object",' +
          '"location": {' +
            '"top": 0,' +
            '"left": 10,' +
            '"width": 100,' +
            '"height": 200' +
          '}' +
        '}' +
      ']' +
    '}';
  }
}
