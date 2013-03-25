module Furter
  module Accessors
    class Button < View
      include Furter

      def initialize(locator)
        locator = locator.merge({:label => locator[:text]}) if locator[:text]
        super(locator)
      end

      private
      def view_class
        return "view:'#{@locator[:type]}'" if @locator[:type]
        'button'
      end
    end
  end
end
