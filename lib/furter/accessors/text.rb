module Furter
  module Accessors
    class Text < View
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

      def editable?
        frankly_map(selector, "isEnabled")[0]
      end

      private
      def selector
        return "textField placeholder:'#{@locator[:placeholder]}'" if placeholder?
        return "textField marked:'#{@locator[:label]}'" if label?
      end

      def placeholder?
        @locator[:placeholder]
      end

      def label?
        @locator[:label]
      end
    end
  end
end
