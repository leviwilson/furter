Feature:  Working with buttons

  Scenario: Clicking buttons by text
    When I click the button identified by "text"
    Then the text identified by "label" should be "The button was clicked!"

  Scenario: Clicking buttons by label
    When I click the button identified by "label"
    Then the text identified by "label" should be "The labeled button was clicked!"

  Scenario: Working with the raw button view
    Then we can interact with the raw view of the button identified by "label"
