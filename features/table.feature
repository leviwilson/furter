Feature: Working with table view

  Background: Navigating to Tables Page
    When I click the button on the "DetailPage" identified by "tables"
    Then I should end up on the "TablesPage"
    
    Scenario: Selecting a table row by index
      When I click in the "0" index of the table identified by "elements"
      Then I know that the label on the "TablesPage" identified by "selected" is "Fourth element"

    Scenario: Getting number of rows in table with one section
      Then I know the table on the "TablesPage" identified by "elements" has "4" rows
      
    Scenario: Getting number of rows in table with multiple sections
      Given I have a table identified by "multiple" with "2" sections
      And the section "0" on the table identified by "multiple" has "3" rows
      And the section "1" on the table identified by "multiple" has "4" rows
      Then I know the table on the "TablesPage" identified by "multiple" has "7" rows