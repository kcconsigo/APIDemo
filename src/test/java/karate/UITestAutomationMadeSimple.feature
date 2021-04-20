@smoke
Feature: UI Test Automation

  Background:
    * driver 'https://www.google.com/'

    Given driver 'https://www.google.com/'
    And input ('//input[@title='Search']', 'karate dsl')
    When click('input[name=btnI]')
    Then waitForUrl('https://github.com/intuit/karate')

    When click('{a}Find File')
    And def searchField = waitFor('input[name=query]')
    Then match driver.url == 'https://github.com/intuit/karate'
    Then match driver.title == 'Test Page'