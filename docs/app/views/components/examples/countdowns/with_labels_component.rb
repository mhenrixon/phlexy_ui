module Examples
  module Countdowns
    class WithLabelsComponent < Base
      def title
        "With labels"
      end

      def example
        div class: "flex gap-5" do
          div do
            Countdown class: "text-5xl" do
              span style: "--value:15;"
            end
            plain "days"
          end

          div do
            Countdown class: "text-5xl" do
              span style: "--value:10;"
            end
            plain "hours"
          end

          div do
            Countdown class: "text-5xl" do
              span style: "--value:24;"
            end
            plain "min"
          end

          div do
            Countdown class: "text-5xl" do
              span style: "--value:52;"
            end
            plain "sec"
          end
        end
      end
    end
  end
end
