module Furter
  module Accessors
    class ScrollView < View

    def scroll(direction)
      frankly_map("#{selector}", 'swipeInDirection:',  direction)
    end

    def view_class
      return "view:'#{@locator[:type]}'" if @locator[:type]
      "view:'UIScrollView'"
    end

    end
  end
end


