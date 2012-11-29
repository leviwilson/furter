module Furter
  module Accessors
    class Switch < View
      include Furter

      def on?
        frankly_map(selector, "isOn")[0]
      end

      def set(on_or_off)
        click if on_or_off != on?
      end

      private
      def selector
        "view:'RCSwitchOnOff' marked:'#{@locator[:label]}'"
      end
    end
  end
end
