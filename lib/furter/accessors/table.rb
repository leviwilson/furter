module Furter
  module Accessors
    class Table < View
      def options
        frankly_map("#{selector} label", "text").compact.map(&:strip).reject(&:empty?)
      end

      def item_at(index)
        touch("#{selector} tableViewCell index:#{index}")
      end

      def row_count
        sections = frankly_map("#{selector}", 'numberOfSections')[0]
        current_section = 1
        until current_section > sections
          rows = rows.to_i + frankly_map("#{selector}", 'numberOfRowsInSection:', "#{current_section}")
          current_section += 1
        end
        rows
      end

      private
      def selector
        "view:'UITableView' marked:'#{@locator[:label]}'"
      end
    end
  end
end

