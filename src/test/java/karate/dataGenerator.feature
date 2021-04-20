Feature: Articles

  Background: Define URL
    * url 'https://conduit.productionready.io/api/articles'
    * def articleRequestBody = read('classpath:counduitApp/json/newArticleRequest.json')
    * def dataGenerator = Java.type('hlepers.DataGenerator')
    * set articleRequestBody.article.title = dataGenerator.getRandomArticleValues().title
    * set articleRequestBody.article.description = dataGenerator.getRandomArticleValues().description
    * set articleRequestBody.article.body = dataGenerator.getRandomArticleValues().body

  Scenario: Create new article
    Given path 'articles'
    When method POST
    Then status 404
    And match response.article.title == articleRequestBody.article.title