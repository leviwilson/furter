Then(/^switches can be toggled both on or off$/) do
  on(DetailPage) do |screen|
    [true, false].each do |what_now|
      screen.switch_toggle = what_now
      screen.switch_toggle.should eq(what_now)
    end
  end
end
