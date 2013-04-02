module Furter
  module Accessors
    class Label < View
      def view_class
        'label'
      end

      def text
        frankly_map(selector, 'text')[0]
      end
    end
  end
end
