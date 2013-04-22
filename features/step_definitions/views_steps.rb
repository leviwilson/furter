Then /^the "([^"]*)" is active$/ do |page|
  on(page.to_class).should be_active
end