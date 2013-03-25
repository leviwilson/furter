module Furter
  module Accessors
    class Text < View
      alias_method :editable?, :enabled?

      def get_text
        frankly_map(selector, "text")[0]
      end

      def set_text(text)
        frankly_map(selector, "becomeFirstResponder")
        frankly_map(selector, "setText:", text)
        frankly_map(selector, "endEditing:", true)
      end

      def has_text?(text)
        element_exists "view marked:'#{text}'"
      end

      private
      def selector
        return "textField placeholder:'#{@locator[:placeholder]}'" if @locator[:placeholder]
        return "textField marked:'#{@locator[:label]}'" if @locator[:label]
      end
    end
  end
end
