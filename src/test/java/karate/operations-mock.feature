Feature: stateful mock server for operations

  Scenario: pathMatches('/operation/addition') && methodIs('post')
    * print request
    * def response =
    """
    {
       "result": 23,
       "number1": 10,
       "number2": 13
    }
    """

  Scenario: pathMatches('/operation/substraction') && methodIs('post')
    * def response =
    """
    {
       "result": 3,
       "number1": 13,
       "number2": 10
    }
    """