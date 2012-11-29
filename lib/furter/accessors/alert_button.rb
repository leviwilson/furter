module Furter
  module Accessors
    class AlertButton < View
      include Frank::Cucumber::FrankHelper

      def click
        wait_for_nothing_to_be_animating
        super
      end

      private
      def selector
        "view:'UIAlertView' view:'UIAlertButton' marked:'#{@locator[:text]}'"
      end
    end
  end
end

