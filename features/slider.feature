Feature:  Working with sliders

Scenario: Interacting with the slider
    Then we can interact with the raw view of the slider identified by "label"

Scenario: Getting and Setting value of the slider
  Given I have a slider identified by "label"
  When I set the progress of the slider identified by "label" to ".20"
  Then I can see the progress of the slider identified by "label" is ".20"

Scenario: Getting and setting the value of the slider by minutes
  Given I have a slider identified by "label"
  When I set the max minutes to "10" minutes
  And I set the progress minutes to "5" minutes
  Then the progress bar is set to "50" percent



#
#  Scenario: Getting the progress max by id
#    When I am looking at the progress of a seek bar
#    Then the retrieved progress max indicated by "id" should be "100"



#  Scenario: Getting the progress bar's view by id
#    When I am looking at the progress of a seek bar
#    Then the progress bar indicated by "id" can determine the following properties:
#      | property  | value |
#      | clickable | false |
#      | enabled   | true  |
#      | focusable | true  |
#      | focused   | false |
#      | selected  | false |
#      | shown     | true  |
#
#  Scenario: Getting the progress bar's view by index
#    When I am looking at the progress of a seek bar
#    Then the progress bar indicated by "index" can determine the following properties:
#      | property  | value |
#      | clickable | false |
#      | enabled   | true  |
#      | focusable | true  |
#      | focused   | false |
#      | selected  | false |
#      | shown     | true  |