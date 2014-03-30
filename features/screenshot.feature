@screenshots
Feature:  Taking screenshots

  Scenario: Taking screenshot in the default directory
    Given I have taken a screenshot titled "test" in the "default" directory
    Then a file exists in the "screenshots" directory named "test.jpg"

  Scenario: Taking a screenshot in an explicit directory
    Given I have taken a screenshot titled "test" in the "explicit" directory
    Then a file exists in the "explicit" directory named "test.jpg"