When(/^I click in the "([^"]*)" index of the table identified by "([^"]*)"$/) do |index, label|
  on(TablesPage).send("table_#{label}_select_index", index)
end
Then(/^I know the table on the "([^"]*)" identified by "([^"]*)" has "([^"]*)" rows$/) do |page, label, rows|
  on(page.to_class).send("table_#{label}_rows").should == rows.to_i
end