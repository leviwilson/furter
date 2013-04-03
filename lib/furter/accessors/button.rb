module Furter
  module Accessors
    class Button < View
      private
      def view_class
        case
          when @locator[:type]
            "view:'#{@locator[:type]}'"
          when @locator[:text]
            "button label"
          else
            "button"
        end
      end
    end
  end
end
