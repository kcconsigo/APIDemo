@smokeTesting
Feature: Home Work
  Background:
    * url 'https://conduit.productionready.io/api/articles/hello-world-4g2mi/favorite'

    Scenario: Do the Home Work
      Given url 'https://conduit.productionready.io/api/articles/hello-world-4g2mi/favorite'
      Given path 'favorite'
      When method POST
      Then status 404