When(/^I click in the "([^"]*)" index of the table identified by "([^"]*)"$/) do |index, label|
  on(TablesPage).send("table_#{label}_select_index", index)
end
Then(/^I know the table on the "([^"]*)" identified by "([^"]*)" has "([^"]*)" rows$/) do |page, label, rows|
  on(page.to_class).send("table_#{label}_rows").should == rows.to_i
end
Given(/^I have a table identified by "([^"]*)" with "([^"]*)" sections$/) do |label, sections|
   on(TablesPage).send("table_#{label}_sections").should == sections.to_i
end
When(/^the section "([^"]*)" on the table identified by "([^"]*)" has "([^"]*)" rows$/) do |section, label, rows|
  on(TablesPage).send("table_#{label}_section_rows", section.to_i).should == rows.to_i
end