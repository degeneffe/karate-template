@Operation
Feature: Operation mocked
  Text regarding feature bla bla bla

  Background:
    * def port = karate.env == 'mock' ? karate.start('operations-mock.feature').port : 8080
    * url baseUrl + port
    * configure logPrettyRequest = true
    * configure logPrettyResponse =


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

  @Substraction
  Scenario: Substraction
    Given path 'operation','substraction'
    And request
      """
      {
        "number1": 10,
        "number2": 13
      }
      """
    When method POST
    Then status 200


