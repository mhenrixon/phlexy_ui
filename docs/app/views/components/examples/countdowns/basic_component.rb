module Examples
  module Countdowns
    class BasicComponent < Base
      def title
        "Countdown"
      end

      def subtitle
        "Use CSS --value custom property to set values between 0 and 99."
      end

      def example
        Countdown do
          span style: "--value:15;"
        end
      end
    end
  end
end
