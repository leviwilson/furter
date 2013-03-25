Feature:  Working with buttons

  Scenario: Clicking buttons by text
    When I click the button identified by "text"
    Then the text identified by "label" should be "The button was clicked!"
