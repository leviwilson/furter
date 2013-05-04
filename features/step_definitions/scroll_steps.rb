When(/^I swipe the scrollview identified by the label "([^"]*)" in the "([^"]*)" direction$/) do |which, direction|
  frankly_map("view:'UIScrollView' marked:'#{which}'", 'swipeInDirection:', direction)
end

Then(/^It is "([^"]*)" I can touch the view type "([^"]*)" marked "([^"]*)"$/) do |value, type, label|
  touch("view:'UI#{type}' marked:'#{label}'")[0].to_s.should == "#{value}"
end

When(/^The ScrollView is not scrolling$/) do
  frankly_map("view:'UIScrollView' marked:'scrollView'", 'isTracking')[0].should be_false
end

When(/^The ScrollView is scrolling$/) do
  frankly_map("view:'UIScrollView' marked:'scrollView'", 'isTracking')[0].should be_true
end