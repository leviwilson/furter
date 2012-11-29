require 'frank-cucumber'
require 'furter/navigation'
require 'furter/accessors'
require 'furter/accessors/view'
require 'furter/accessors/alert_button'
require 'furter/accessors/button'
require 'furter/accessors/erie_button'
require 'furter/accessors/map_pin'
require 'furter/accessors/switch'
require 'furter/accessors/table_item'
require 'furter/accessors/text'

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
      exists = element_exists locator
    end
    block.call locator if block
  end

  def wait_for_and_touch(locator)
    wait_for(locator) do |locator|
      touch locator
    end
  end

  def active?
    true
  end
end
