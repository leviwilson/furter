Feature: Scrolling views

  Background: Navigating to Scroll Page
    When I click the button on the "DetailPage" identified by "paging"
    Then I should end up on the "ScrollPage"
    Then It is "true" I can touch the view type "Label" marked "TextField:0"
    And The ScrollView is not scrolling
  Scenario: Scrolling a view
    When I swipe the scrollview identified by the label "scrollView" in the "left" direction
    Then The ScrollView is scrolling




