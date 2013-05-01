Feature: Scrolling views

  Background: Navigating to Scroll Page
    When I click the button identified by "paging"
    Then I should end up on the "ScrollPage"

    Then the text on the "ScrollPage" identified by "first" should be "Label:0"

  Scenario: Scrolling to next page
    When I move the scrollview identified by "page" "200" pixels left
    Then the text on the "ScrollPage" identified by "second" should be "Label:1"




