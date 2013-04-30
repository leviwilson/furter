Feature: Scrolling views

  Scenario: Scrolling to next page
    When I click the button identified by "Paging"
    Then I should end up on the "ScrollPage"
    Then I know that the label identified by "TextField:1" is "This is page:1"


