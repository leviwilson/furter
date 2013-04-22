module Furter
  module Accessors
    class Screen
      def has?(*view_classes)
        all = frankly_map("view:'UIView'", 'nextResponder')
        view_classes.map! {|view_class| format view_class}
        (all & view_classes) == view_classes
      end
      private
      def format(name)
        "<#{name}>"
      end
    end
  end
end



