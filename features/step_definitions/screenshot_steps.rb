Given(/^I have taken a screenshot titled "([^"]*)" in the "([^"]*)" directory$/) do |title, directory|
  if directory.eql? 'default'
    Furter.screenshot(title)
  else
    Furter.screenshot(title, directory)
  end
end
Then(/^a file exists in the "([^"]*)" directory named "([^"]*)"$/) do |title, directory|
  File.exist?("./#{directory}/#{title}")
end