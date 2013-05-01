Feature: Scrolling views

  Background: Navigating to Scroll Page
    When I click the button identified by "paging"
    Then I should end up on the "ScrollPage"
  Then I know that the label on the "ScrollPage" identified by "first" is "Label:0"
  Scenario: Scrolling to next page
    When I move the scrollview identified by "page" "200" pixels left
    Then I know that the label on the "ScrollPage" identified by "second" is "Label:1"




