module Examples
  module Countdowns
    class InBoxesComponent < Base
      def title
        "In boxes"
      end

      def example
        div class: "grid auto-cols-max grid-flow-col gap-5 text-center" do
          div class: "bg-base-200 rounded-box flex flex-col p-2" do
            Countdown class: "font-mono text-5xl" do
              span style: "--value:15;"
            end
            plain "days"
          end

          div class: "bg-base-200 rounded-box flex flex-col p-2" do
            Countdown class: "font-mono text-5xl" do
              span style: "--value:10;"
            end
            plain "hours"
          end

          div class: "bg-base-200 rounded-box flex flex-col p-2" do
            Countdown class: "font-mono text-5xl" do
              span style: "--value:24;"
            end
            plain "min"
          end

          div class: "bg-base-200 rounded-box flex flex-col p-2" do
            Countdown class: "font-mono text-5xl" do
              span style: "--value:59;"
            end
            plain "sec"
          end
        end
      end
    end
  end
end
