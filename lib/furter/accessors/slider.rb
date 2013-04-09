module Furter
  module Accessors
    class Slider < View
      include Furter, Frank::Cucumber::FrankHelper, Frank::Cucumber::WaitHelper

      def initialize(locator)
        locator = locator.merge({:label => locator[:text]}) if locator[:text]
        super(locator)
      end

      def move(value)
        frankly_map(selector, 'setValue:animated:', value, 'YES')
      end

      def progress
         frankly_map(selector, 'value')[0]
      end

      def selector
        "view:'UISlider' marked:'#{@locator[:label]}'"
      end
    end
  end
end
