module Examples
  module Countdowns
    class LargeTextComponent < Base
      def title
        "Large text"
      end

      def example
        Countdown class: "text-4xl" do
          span style: "--value:10;"
        end

        Countdown class: "text-6xl" do
          span style: "--value:24;"
        end

        Countdown class: "text-8xl" do
          span style: "--value:59;"
        end
      end
    end
  end
end
