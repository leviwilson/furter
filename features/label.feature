Feature: Working with label controls

  Scenario: Getting the value of a label by accessibility label
    Then I know that the label  on the "DetailPage"  identified by "id" is "Detail view content goes here"

  Scenario: Accessing the raw view properties of a label
    Then the label identified by "id" should be "visible"

  Scenario: Finding labels by their text
    Then the label identified by "text" should be "visible"
