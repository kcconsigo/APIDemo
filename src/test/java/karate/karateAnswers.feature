Feature:

  Background:
    * url 'http://localhost:8080'


  Scenario Outline: Given Circuit name, validate the country
    Given path 'api/f1/circuits/<name>.json'
    When mathod GET
    Then match $.MRData.CircuitTable.Circuits[0].Location.country == '<country>'

    Examples:
      | name  | country |
      | monza | Italy   |
      | spa   | Belgium |
      | sepang | Malaysia |


  Scenario Outline: Given race number, validate number of pitstops for Max Verstappen in 2015
    Given path 'api/f1/2015/<race>/drivers/max_verstappen/pitstops.json'
    When method GET
    Then assert response.MRData.RaceTable.Races[0].PitStops.length == <stops>

    Examples:
      | race | stops |
      | 1    | 1     |
      | 2    | 3     |
      | 3    | 2     |
      | 4    | 2     |

