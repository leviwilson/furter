When(/^I click in the "([^"]*)" index of the table identified by "([^"]*)"$/) do |index, label|
  on(TablesPage).send("table_#{label}_select_index", index)
end