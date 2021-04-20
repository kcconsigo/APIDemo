@UI
Feature: Test for Ui Karate Framework

  Scenario: Verify if user can access
    Given driver 'https://www.google.com/'
    And input('input[name=q]', 'karate dsl')
    When click('input[name=btnI]')
    Then waitForUrl('https://github.com/intuit/karate')

    When click('{a}Find File')
    And def searchField = waitFor('input[name=query]')
    Then match driver.url == 'https://github.com/intuit/karate/find/master'
