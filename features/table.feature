Feature: Working with table view

  Background: Navigating to Tables Page
    When I click the button on the "DetailPage" identified by "tables"
    Then I should end up on the "TablesPage"
    
    Scenario: Selecting a table row by index
      When I click in the "0" index of the table identified by "elements"
      Then I know that the label on the "TablesPage" identified by "selected" is "Fourth element"

    Scenario: Getting number of rows in table with one section
      Then I know the table on the "TablesPage" identified by "elements" has "4" rows