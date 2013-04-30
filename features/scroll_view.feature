Feature: Scrolling views

  Scenario: Scrolling to next page
    When I click on the paging button
    Then I should end up on the "ScrollPage"
    Then I know that the label identified by "TextField:0" is "Label:0"


