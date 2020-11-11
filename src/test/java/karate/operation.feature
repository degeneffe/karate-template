@Operation
Feature: Operation
  Text regarding feature bla bla bla

  Background:
    * url baseUrl
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true

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


