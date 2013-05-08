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
        sections = section_count - 1
        current_section = 0
        rows = 0
        until current_section > sections
          rows = rows + count_section(current_section)
          current_section += 1
        end
        rows
      end

      def count_section(section)
        frankly_map("#{selector}", 'numberOfRowsInSection:', section)[0]
      end

      def section_count
        frankly_map("#{selector}", 'numberOfSections')[0]
      end

      private
      def selector
        "view:'UITableView' marked:'#{@locator[:label]}'"
      end
    end
  end
end

