When(/^I click in the "([^"]*)" index of the table identified by "([^"]*)"$/) do |index, how|
  on(TablesPage).send("table_#{how}=", index.to_i)
end