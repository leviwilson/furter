module Furter
  module Accessors
    class TableItem < Button
      private
      def selector
        "label marked:'#{@locator[:text]}' parent tableViewCell"
      end
    end
  end
end
