Feature: Working with table view

  Background: Navigating to Tables Page
    When I click the button identified by "paging"
    Then I should end up on the "ScrollPage"
    Then It is "true" I can touch the view type "Label" marked "TextField:0"
    And The ScrollView is not scrolling
