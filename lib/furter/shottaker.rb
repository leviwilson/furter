module Furter
  class ShotTaker
    extend Frank::Cucumber::FrankHelper
      def self.screenshot(title, path)
        Dir.mkdir(path) unless File.exists?(path)
        frankly_screenshot("./#{path}/#{title}.jpg", nil, true)
      end
    end
  end