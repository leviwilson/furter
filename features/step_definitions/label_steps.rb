Then /^I know that the label on the "([^"]*)" identified by "([^"]*)" is "([^"]*)"$/ do |page, how, what|
  on(page.to_class).send("label_#{how}").should eq(what)
end

Then /^the label on the "([^"]*)" identified by "([^"]*)" should be "([^"]*)"$/ do |page, how, property|
  which_method = "#{property}?".to_sym
  on(page.to_class).send("label_#{how}_view").send(which_method).should be_true
end