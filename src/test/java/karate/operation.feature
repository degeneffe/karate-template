@Operation
Feature: Operation
  Text regarding feature bla bla bla

  Background:
    * url baseUrl + '8080'
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true
    * configure afterScenario =
    """
    function(){
      var info = karate.info;
      karate.log('after', info.scenarioType + ':', info.scenarioName);
      karate.call('after-scenario.feature', { caller: info.featureFileName });
     }
    """

  @Addition
  Scenario: Addition
    Given path 'operation','addition'
    And request
      """
      {
        "number1": 10,
        "number2": 13
      }
      """
    When method POST
    Then status 200
    And match response ==
      """
      {
        "result": #number,
        "number1": #number,
        "number2": #number
      }
      """

  @Addition
  Scenario Outline: Several additions
    Given path 'operation','addition'
    And request
      """
      {
        "number1": <number1>,
        "number2": <number2>
      }
      """
    When method POST
    Then status 200
    And match response ==
      """
      {
        "result": #number,
        "number1": #number,
        "number2": #number
      }
      """
    And match header x-myheader == 'test header'
    And assert responseTime < 10
    Examples:
      | number1 | number2 |
      | 0       | 1       |
      | 3       | 4       |
      | 12      | 15      |

