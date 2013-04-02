Then /^I know that the label identified by "([^"]*)" is "([^"]*)"$/ do |how, what|
  on(DetailPage).send("label_#{how}").should eq(what)
end