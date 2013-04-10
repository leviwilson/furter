Feature:  Working with sliders

Scenario: Interacting with the slider
    Then we can interact with the raw view of the slider identified by "label"

Scenario: Getting and Setting value of the slider
  Given we can interact with the raw view of the slider identified by "label"
  When I set the progress of the slider identified by "label" to "0.2"
  Then I can see the progress of the slider identified by "label" is "0.2"

Scenario: Getting and setting the value of the slider by minutes
  Given we can interact with the raw view of the slider identified by "label"
  When I set the max to "10:00" minutes and progress to "5:00" of the slider identified by "label"
  Then I can see the progress of the slider identified by "label" is "0.5"