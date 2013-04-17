class DetailPage
  include Furter

  text(:text_placeholder, :placeholder => 'First Field')
  text(:text_label, :label => 'textByLabel')

  label(:label_id, :label => 'labelByAccessibilityLabel')
  label(:label_text, :text => 'Placeholder')

  button(:button_text, :text => 'Some Button')
  button(:button_label, :label => 'labeledButtonId')
  button(:go_elsewhere, :text => 'Go Elsewhere')

  switch(:switch_toggle, :label => 'switchToggle')

  slider(:slider_label, :label=> 'sliderByLabel')
end
