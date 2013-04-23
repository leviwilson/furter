require 'page_navigation'

module Furter
  module Navigation
    include PageNavigation, Frank::Cucumber::FrankHelper

    def wait_a_bit_for_animations
      begin
        wait_for_nothing_to_be_animating 3
      rescue
      end
    end

    def on(cls, &block)
      screen = cls.new
      wait_a_bit_for_animations
      wait_until(:message => "Expected #{cls} to be active", :timeout => 30) do
        screen.active?
      end if respond_to?(:active?)
      wait_a_bit_for_animations
      block.call screen if block
      screen
    end
  end
end
