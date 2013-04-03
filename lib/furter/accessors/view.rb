module Furter
  module Accessors
    class View
      include Furter, Frank::Cucumber::FrankHelper, Frank::Cucumber::WaitHelper

      def initialize(locator={})
        @locator = locator
      end

      def click
        wait_for_and_touch selector
      end

      def visible?
        element_is_not_hidden selector
      end

      def enabled?
        frankly_map(selector, 'isEnabled')[0]
      end

      private
      def selector
        "#{view_class} #{selector_how}#{selector_extra}"
      end

      def selector_how
        case
          when @locator[:label]
            "marked:'#{@locator[:label]}'"
          when @locator[:text]
            "text:'#{@locator[:text]}'"
        end
      end

      def selector_extra
        " #{@locator[:extra]}" if @locator[:extra]
      end

      def view_class
        return "view:'#{@locator[:type]}'" if @locator[:type]
        "view"
      end
    end
  end
end
