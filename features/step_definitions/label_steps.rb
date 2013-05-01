Then /^I know that the label identified by "([^"]*)" is "([^"]*)"$/ do |how, what|
  on(DetailPage).send("label_#{how}").should eq(what)
end

Then /^the label on the "([^"]*)"  identified by "([^"]*)" should be "([^"]*)"$/ do |how, property|
  which_method = "#{property}?".to_sym
  on(page.to_class).send("label_#{how}_view").send(which_method).should be_true
end