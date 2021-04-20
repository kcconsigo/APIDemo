Feature: I want to send POST Request
  Background: Define URL
    * url 'https://conduit.productionready.io/api'
    * path 'tags'


  Scenario: Company sends user details
    Given url 'https://conduit.productionready.io/api'
    Given path 'tags'
    When method POST
    Then status 404


      
