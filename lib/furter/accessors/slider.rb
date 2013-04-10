module Furter
  module Accessors
    class Slider < View
      include Furter, Frank::Cucumber::FrankHelper, Frank::Cucumber::WaitHelper

      def initialize(locator)
        locator = locator.merge({:label => locator[:text]}) if locator[:text]
        super(locator)
      end

      def move(value)
        frankly_map(selector, 'setValue:animated:', value, 'YES')

      end

      def progress
       p frankly_map(selector, 'value')[0]
      end

      def selector
        "view:'UISlider' marked:'#{@locator[:label]}'"
      end

      def max_min(time)

        if time.length == 3
          @max = shave_colon time
        else
          @max = to_seconds time
        end
      end

      def progress_min(time)

        if time.length == 3
          @min = shave_colon time
        else
          @min = to_seconds time
          end
        frankly_map(selector, 'setValue:animated:', percent, 'YES')
      end



      private
      def shave_colon time
        if time.include? ':'
          time = time[1..2]
        end
      end

      def to_seconds time
        seconds(time.split ";")
      end

      def seconds (parts)

        if parts.length == 3
          day = parts[0]
          hour = parts[1]
          minutes = parts[2]
        else
          hour = parts[0]
          minutes = parts[1]
        end

        d_secs = day.to_i * 86400
        h_secs = hour.to_i  * 3600
        m_secs = minutes.to_i * 60

        d_secs + h_secs + m_secs
      end

      def percent
        @min.to_f / @max.to_f
      end
    end
  end
end

