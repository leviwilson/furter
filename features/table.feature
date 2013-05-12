Feature: Working with table view

  Background: Navigating to Tables Page
    When I navigate to the "TablesPage" using the "goto tables" route
    Then I should end up on the "TablesPage"

  Scenario: Selecting a table row by index
    When I click in the "0" index of the table identified by "elements"
    Then I know that the label  on the "TablesPage"  identified by "selected" is "Fourth element"