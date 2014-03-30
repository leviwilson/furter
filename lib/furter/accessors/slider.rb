module Furter
  module Accessors
    class Slider < View

      def move(value)
        frankly_map(selector, 'setValue:animated:', value, 'YES')
      end

      def progress
        frankly_map(selector, 'value')[0]
      end

      def view_class
        return "view:\"#{@locator[:type]}\"" if @locator[:type]
        "view:\"UISlider\""
      end
    end
  end
end

