Feature: Working with table view

  Scenario: Clicking on table by index
    Given the device is in landscape orientation
    And the table marked "masterTableView" is empty
    When create "3" time stamps each "2" seconds apart
    And I click the "1" index of the table marked "masterTableView"
    Then the detail label should reflect the middle time stamp
