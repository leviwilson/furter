Feature:  Working with text controls

Scenario: Getting and setting text by placeholder
  When I set the text identified by "placeholder" to "The first field's text"
  Then the text identified by "placeholder" should be "The first field's text"

Scenario: Getting and setting text by label
  When I set the text identified by "label" to "the label text"
  Then the text identified by "label" should be "the label text"

Scenario: Determining if a text field is editable
  Then we know if a text field is both editable and not editable

Scenario: Working with the raw view
  Then we can interact with the raw text view identified by "placeholder"
