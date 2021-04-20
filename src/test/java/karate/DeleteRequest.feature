@tag
  Feature: I want to delete request

    Background:
      * url 'https://conduit.productionready.io/api/articles'
      * path 'articles'

      Scenario: I want to send delete request
        Given params {limits:10, offset:0}
        Given url 'https://conduit.productionready.io/api/articles'
        Given path 'articles'
        When method DELETE
        Then status 404

