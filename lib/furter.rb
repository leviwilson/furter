require 'frank-cucumber'
require 'furter/navigation'
require 'furter/accessors'
require 'furter/accessors/view'
require 'furter/accessors/alert_button'
require 'furter/accessors/button'
require 'furter/accessors/map_pin'
require 'furter/accessors/switch'
require 'furter/accessors/table'
require 'furter/accessors/table_item'
require 'furter/accessors/text'
require 'furter/accessors/label'
require 'furter/accessors/slider'

module Furter
  include Frank::Cucumber::FrankHelper

  TIMEOUT = 30

  def self.included(cls)
    cls.extend Furter::Accessors
  end

  def has_text?(text)
    Furter::Accessors::Text.new.has_text? text
  end

  def wait_for_text(text)
    wait_until(:message => "Timed out waiting for text \"#{text}\"", :timeout => Furter::TIMEOUT) do
      has_text? text
    end
  end

  def exists?(locator)
    element_exists locator
  end

  def wait_for(locator, &block)
    wait_until(:message => "Timed out waiting for \"#{locator}\"", :timeout => Furter::TIMEOUT) do
      exists? locator
    end
    block.call locator if block
  end

  def wait_for_and_touch(locator)
    wait_for(locator) do |locator|
      touch locator
    end
  end

  def active?(*controllers)
    return screen_has? controllers if controllers.count > 0
    true
  end

  def screen_has?(*controllers)
      element_types = frankly_map("view:'UIView'", 'nextResponder')
      match controllers[0], element_types
      end
  end

  def match(type, types)

    return false if type[0].nil?
    type = add_angles_to type[0]
    types.include? type

  end

  def add_angles_to(type_name)
   formatted = "<" << type_name << ">"
  end



