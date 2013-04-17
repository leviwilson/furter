Then /^we can interact with the raw view of the slider identified by "([^"]*)"$/ do |how|
  on(DetailPage).send("slider_#{how}_view").should be_kind_of(Furter::Accessors::View)
end

When /^I set the progress of the slider identified by "([^"]*)" to "([^"]*)"$/ do |how, value|
  on(DetailPage).send("slider_#{how}_move", value.to_f)
end

Then /^I can see the progress of the slider identified by "([^"]*)" is "([^"]*)"$/ do |how, value|
  on(DetailPage).send("slider_#{how}_progress").should eq(value.to_f)
end
