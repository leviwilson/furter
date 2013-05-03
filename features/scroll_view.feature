Feature: Scrolling views

  Background: Navigating to Scroll Page
    When I click the button identified by "paging"
    Then I should end up on the "ScrollPage"
    Then I know that the label on the "ScrollPage" identified by "first" is "Label:0"
    Then the label on the "ScrollPage" identified by "first" should be "visible"
  Scenario: Scrolling to next page
    When I swipe the scrollview identified by the label "scrollView" in the "left" direction
    Then I know that the label on the "ScrollPage" identified by "third" is "Label:2"




