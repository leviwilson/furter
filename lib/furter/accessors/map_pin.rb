module Furter
  module Accessors
    class MapPin < View
      include Frank::Cucumber::FrankHelper

      def click
        wait_for_nothing_to_be_animating
        super
      end

      private
      def selector
        "view:'MKPinAnnotationView' marked:'#{@locator[:text]}'"
      end
    end
  end
end

