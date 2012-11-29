module Furter
  module Accessors
    class Button < View
      include Furter

      private
      def selector
        "#{button_class} marked:'#{@locator[:text]}'"
      end

      def button_class
        @locator[:type] || "button"
      end
    end
  end
end
