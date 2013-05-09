When /^I click the button on the "([^"]*)" identified by "([^"]*)"$/ do |page, how|
  on(page.to_class).send("button_#{how}")
end

Then /^we can interact with the raw view of the button identified by "([^"]*)"$/ do |how|
  on(DetailPage).send("button_#{how}_view").should be_kind_of(Furter::Accessors::View)
end