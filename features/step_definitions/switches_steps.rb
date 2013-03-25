Then(/^switches can be toggled both on or off$/) do
  on(DetailPage) do |screen|
    [true, false].each do |what_now|
      screen.switch_toggle = what_now
      screen.switch_toggle.should eq(what_now)
    end
  end
end

Then /^we have access to the switch view$/ do
  on(DetailPage).switch_toggle_view.should be_kind_of(Furter::Accessors::View)
end