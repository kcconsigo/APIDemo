Feature: Sign up new user
  Background: Preconditions
    * url 'https://conduit.productionready.io/api/users'
    * path 'users'


  Scenario: New user Sign up
    Given path 'https://conduit.productionready.io/api/users'
    And request {"user":{"email":"KarateUser@test.com","password":"123Karate123","username":"karateUser123"}}
    When method POST
    Then status 404


  Scenario: New user Sign up
    Given url 'https://conduit.productionready.io/api/users'
    And request
    """{
        "user":
           {
                "email":"KarateUser@test.com",
                "password":"123Karate123",
                "username":"karateUser123"
           }
        }

    """
    When method PUT
    Then status 404