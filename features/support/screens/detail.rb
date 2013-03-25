class DetailPage
  include Furter

  text(:text_placeholder, :placeholder => 'First Field')
  text(:text_label, :label => 'textByLabel')

  button(:button_text, :text => 'Some Button')

  switch(:switch_toggle, :label => 'switchToggle')
end
