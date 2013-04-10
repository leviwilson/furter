Then /^we can interact with the raw view of the slider identified by "([^"]*)"$/ do |how|
  on(DetailPage).send("slider_#{how}_view").should be_kind_of(Furter::Accessors::View)
end

Given /^I have a slider identified by "([^"]*)"$/ do |how|
  on(DetailPage).send("slider_#{how}_view").should_not be_nil
end


When /^I set the progress of the slider identified by "([^"]*)" to "([^"]*)"$/ do |label, value|
  slider = on(DetailPage).send("slider_#{label}_view")
  slider.move value.to_f
end
Then /^I can see the progress of the slider identified by "([^"]*)" is "([^"]*)"$/ do |label, value|
  slider = on(DetailPage).send("slider_#{label}_view")
  slider.progress.should == value.to_f
end

#
#Then /^the progress bar is set to "([^"]*)" percent$/ do |percent|
#  slider = on(DetailPage).send("slider_#{label}_view")
#
#
#end

#When /^I set the max minutes of the slider identified by "([^"]*)" to "([^"]*)" minutes$/ do |label, minutes|
#    slider = on(DetailPage).send("slider_#{label}_view")
#    slider.max_min minutes
#end
#
#When /^I set the progress minutes of the slider identified by "([^"]*)" to "([^"]*)" minutes$/ do |label, minutes|
#    slider = on(DetailPage).send("slider_#{label}_view")
#    slider.progress_min minutes
#end
When /^I set the max to "([^"]*)" minutes and progress to "([^"]*)" of the slider identified by "([^"]*)"$/ do |max, progress, label|
  slider = on(DetailPage).send("slider_#{label}_view")
  slider.max_min max
  slider.progress_min progress
end