Then /^I know that the label "([^"]*)" on the  identified by "([^"]*)" is "([^"]*)"$/ do |page, how, what|
  on(page.class).send("label_#{how}").should eq(what)
end

Then /^the label identified by "([^"]*)" should be "([^"]*)"$/ do |how, property|
  which_method = "#{property}?".to_sym
  on(DetailPage).send("label_#{how}_view").send(which_method).should be_true
end