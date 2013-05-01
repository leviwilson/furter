When /^I move the scrollview identified by "([^"]*)"$/ do |arg|
  pending
end
When /^I move the scrollview identified by "([^"]*)" "([^"]*)" pixels left$/ do |which, distance|
  on(ScrollPage).send("scroll_#{which}_scroll", "#{distance}", "0")
end