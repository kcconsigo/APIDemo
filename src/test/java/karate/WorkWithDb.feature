Feature: Work with DB

  Background: connect to db
    * def dbHandler = Java.type('helpers.DBHandler')


    Scenario: Seed database with a new Job
      * eval dbHandler.addNewJobWithName("QA5")

      @debug
        Scenario: Get level for Job
          * def level = dbHandler.getMinAndMaxLevelsForJob("QA5")
          * print level.minLvl
          * print level.maxLvl
