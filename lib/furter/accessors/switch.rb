module Furter
  module Accessors
    class Switch < View
      include Furter

      def on?
        frankly_map(selector, 'isOn')[0]
      end

      def set(on_or_off)
        tap_and_hold_for 0.1 if on_or_off != on?
      end

      private
      def view_class
        "view:\"UISwitch\""
      end
    end
  end
end
