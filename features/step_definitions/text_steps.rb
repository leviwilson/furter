When(/^I set the text identified by "(.*?)" to "(.*?)"$/) do |how, text|
  on(DetailPage).send("text_#{how}=", text)
end

Then(/^the text on the "(.*?)" identified by "(.*?)" should be "(.*?)"$/) do |page,how, text|
  on(page.to_class).send("text_#{how}").should eq(text)
end

Then(/^we know if a text field is both editable and not editable$/) do
  first_field = "textField placeholder:'First Field'"

  on(DetailPage) do |screen|
    frankly_map(first_field, 'setEnabled:', false)
    screen.should_not be_text_placeholder_editable

    frankly_map(first_field, 'setEnabled:', true)
    screen.should be_text_placeholder_editable
  end
end

Then(/^we can interact with the raw text view identified by "(.*?)"$/) do |how|
  text_view = on(DetailPage).send("text_#{how}_view")
  text_view.should be_kind_of(Furter::Accessors::View)
end

