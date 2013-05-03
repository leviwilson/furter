When(/^I swipe the scrollview identified by the label "([^"]*)" in the "([^"]*)" direction$/) do |which, direction|
  frankly_map("view:'UIScrollView' marked:'#{which}'", 'swipeInDirection:', "#{direction}")
end