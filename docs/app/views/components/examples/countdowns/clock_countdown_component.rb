module Examples
  module Countdowns
    class ClockCountdownComponent < Base
      def title
        "Clock countdown"
      end

      def example
        div class: "grid auto-cols-max grid-flow-col gap-5 text-center" do
          div class: "bg-neutral rounded-box flex flex-col p-2 text-neutral-content" do
            Countdown class: "font-mono text-5xl" do
              span style: "--value:15;"
            end
            plain "days"
          end

          div class: "bg-neutral rounded-box flex flex-col p-2 text-neutral-content" do
            Countdown class: "font-mono text-5xl" do
              span style: "--value:10;"
            end
            plain "hours"
          end

          div class: "bg-neutral rounded-box flex flex-col p-2 text-neutral-content" do
            Countdown class: "font-mono text-5xl" do
              span style: "--value:24;"
            end
            plain "min"
          end

          div class: "bg-neutral rounded-box flex flex-col p-2 text-neutral-content" do
            Countdown class: "font-mono text-5xl" do
              span style: "--value:37;"
            end
            plain "sec"
          end
        end
      end
    end
  end
end
