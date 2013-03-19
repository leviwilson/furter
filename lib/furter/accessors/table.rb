module Furter
  module Accessors
    class Table < View
      def options
        frankly_map("#{selector} label", "text").compact.map(&:strip).reject(&:empty?)
      end

      private
      def selector
        "view:'UITableView' marked:'#{@locator[:label]}'"
      end
    end
  end
end

