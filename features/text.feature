Feature:  Working with text controls

Scenario: Getting and setting text by placeholder
  When I set the text identified by "placeholder" to "The first field's text"
  Then the text identified by "placeholder" should be "The first field's text"
