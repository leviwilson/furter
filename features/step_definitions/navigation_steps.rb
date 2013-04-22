When /^I navigate to the "([^"]*)" using the "([^"]*)" route$/ do |where, which_route|
  navigate_to(where.to_class, :using => which_route.to_method)
end

Then /^I should end up on the "([^"]*)"$/ do |where|

end