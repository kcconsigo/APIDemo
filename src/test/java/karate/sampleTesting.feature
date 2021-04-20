@debug
Feature: I want to send GET Request
  Background: Define URL
    * url 'https://conduit.productionready.io/api/tags'
    * path 'tags'
    * path 'articles'


    Scenario: Company sends user details
      Given url 'https://conduit.productionready.io/api/tags'
      Given path 'tags'
      When method GET
      Then status 404

    Scenario: Company sends user details
      Given url 'https://conduit.productionready.io/api/tags'
      Given path 'tags'
      When method POST
      Then status 404

    Scenario: Get 10 articles from the page
      Given params {limits:10, offset:0}
      Given url 'https://conduit.productionready.io/api/articles'
      Given path 'articles'
      When method GET
      Then status 404

  Scenario: I want to send delete request
    Given params {limits:10, offset:0}
    Given url 'https://conduit.productionready.io/api/articles'
    Given path 'articles'
    When method DELETE
    Then status 404



      
