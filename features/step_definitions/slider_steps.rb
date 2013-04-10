Then /^we can interact with the raw view of the slider identified by "([^"]*)"$/ do |how|
  on(DetailPage).send("slider_#{how}_view").should be_kind_of(Furter::Accessors::View)
end

Given /^I have a slider identified by "([^"]*)"$/ do |how|
  on(DetailPage).send("slider_#{how}_view").should be_kind_of(Furter::Accessors::View)
end


When /^I set the progress of the slider identified by "([^"]*)" to "([^"]*)"$/ do |label, value|
  on(DetailPage).send("slider_#{label}_move", value.to_f)
end

Then /^I can see the progress of the slider identified by "([^"]*)" is "([^"]*)"$/ do |label, value|
  on(DetailPage).send("slider_#{label}_progress").should eq(value.to_f)
end

When /^I set the max to "([^"]*)" minutes and progress to "([^"]*)" of the slider identified by "([^"]*)"$/ do |max, progress, label|

  on(DetailPage) do |screen|
    screen.send("slider_#{label}_max", max)
    screen.send("slider_#{label}_min", progress)
  end
end