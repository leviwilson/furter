When /^I click the button identified by "([^"]*)"$/ do |how|
  on(DetailPage).send("button_#{how}")
end