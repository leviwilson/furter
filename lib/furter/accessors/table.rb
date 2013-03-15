module Furter
  module Accessors
    class Table < View
      def options
        frankly_map("#{selector} label", "text").map(&:strip)
      end

      private
      def selector
        "view:'UITableView' marked:'#{@locator[:label]}'"
      end
    end
  end
end

