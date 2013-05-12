module Furter
  module Accessors
    def text(name, locator)
      define_method("#{name}") do
        Furter::Accessors::Text.new(locator).get_text
      end
      define_method("#{name}_editable?") do
        Furter::Accessors::Text.new(locator).editable?
      end
      define_method("#{name}=") do |text|
        Furter::Accessors::Text.new(locator).set_text text
      end
      define_method("#{name}_view") do
        Furter::Accessors::Text.new(locator)
      end
    end

    def label(name, locator)
      define_method("#{name}") do
        Furter::Accessors::Label.new(locator).text
      end
      define_method("#{name}_view") do
        Furter::Accessors::Label.new(locator)
      end
    end

    def view(name, locator)
      define_method("#{name}") do
        Furter::Accessors::View.new(locator).click
      end
      define_method("#{name}_view") do
        Furter::Accessors::View.new(locator)
      end
    end

    def button(name, locator)
      define_method("#{name}") do
        Furter::Accessors::Button.new(locator).click
      end
      define_method("#{name}_view") do
        Furter::Accessors::Button.new(locator)
      end
    end

    def alert_button(name, locator)
      define_method("#{name}") do
        Furter::Accessors::AlertButton.new(locator).click
      end
    end

    def table(name, locator)
      define_method("#{name}=") do |which|
        Furter::Accessors::TableItem.new(:text => which).click
      end
      define_method("#{name}_options") do
        Furter::Accessors::Table.new(locator).options
      end
      define_method("#{name}_view") do
        Furter::Accessors::Table.new(locator)
      end
      define_method("#{name}_touch_index") do |index|
        Furter::Accessors::Table.new(locator).touch_index index
      end
    end

    def table_item(name, locator)
      define_method("#{name}") do
        Furter::Accessors::TableItem.new(locator).click
      end
    end

    def map_pin(name, locator)
      define_method("#{name}") do
        Furter::Accessors::MapPin.new(locator).click
      end
    end

    def switch(name, locator)
      define_method("#{name}") do
        Furter::Accessors::Switch.new(locator).on?
      end
      define_method("#{name}=") do |on_or_off|
        Furter::Accessors::Switch.new(locator).set on_or_off
      end
      define_method("#{name}_view") do
        Furter::Accessors::Switch.new(locator)
      end
    end

    def slider(name, locator)
      define_method("#{name}_view") do
        Furter::Accessors::Slider.new(locator)
      end
      define_method("#{name}_move") do |value|
        Furter::Accessors::Slider.new(locator).move value
      end
      define_method("#{name}_progress") do
        Furter::Accessors::Slider.new(locator).progress
      end
    end

    def views(*view_classes)
      define_method(:active?) do
        (view_classes & Furter::Accessors::View.new.next_responders) == view_classes
      end
    end
  end
end
