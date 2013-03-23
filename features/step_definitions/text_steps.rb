When(/^I set the text identified by "(.*?)" to "(.*?)"$/) do |how, text|
  on(DetailPage).send("text_#{how}=", text)
end

Then(/^the text identified by "(.*?)" should be "(.*?)"$/) do |how, text|
  on(DetailPage).send("text_#{how}").should eq(text)
end

