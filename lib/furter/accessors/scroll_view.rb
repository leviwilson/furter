module Furter
  module Accessors
    class ScrollView < View

    def scroll(x,y)
      scroll_view_to_position("#{selector}", x.to_s, y.to_s)
    end

    def view_class
      return "view:'#{@locator[:type]}'" if @locator[:type]
      "view:'UIScrollView'"
    end

    end
  end
end


