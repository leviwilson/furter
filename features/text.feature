Feature:  Working with text controls

Scenario: Getting and setting text by placeholder
  When I set the text identified by "placeholder" to "The first field's text"
  Then the text identified by "placeholder" should be "The first field's text"

Scenario: Getting and setting text by label
  When I set the text identified by "label" to "the label text"
  Then the text identified by "label" should be "the label text"
