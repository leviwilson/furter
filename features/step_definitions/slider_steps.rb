Then /^we can interact with the raw view of the slider identified by "([^"]*)"$/ do |how|
  on(DetailPage).send("slider_#{how}_view").should be_kind_of(Furter::Accessors::View)
end

Given /^I have a slider identified by "([^"]*)"$/ do |how|
  on(DetailPage).send("slider_#{how}_view").should_not be_nil
end


When /^I set the progress of the slider identified by "([^"]*)" to "([^"]*)"$/ do |label, value|
  slider = on(DetailPage).send("slider_#{label}_view")
  slider.move value
end
Then /^I can see the progress of the slider identified by "([^"]*)" is "([^"]*)"$/ do |label, value|
  slider = on(DetailPage).send("slider_#{label}_view")
  slider.progress.should == 0.20
end
When /^I set the max minutes to "([^"]*)" minutes$/ do |minutes|
  pending
end