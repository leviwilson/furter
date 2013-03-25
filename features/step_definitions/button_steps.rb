When /^I click the button identified by "([^"]*)"$/ do |how|
  on(DetailPage).send("button_#{how}")
end

Then /^we can interact with the raw view of the button identified by "([^"]*)"$/ do |how|
  on(DetailPage).send("button_#{how}_view").should be_kind_of(Furter::Accessors::View)
end