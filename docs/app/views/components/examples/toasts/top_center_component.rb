module Examples
  module Toasts
    class TopCenterComponent < Base
      def title
        "Toast top center"
      end

      def example
        div class: "relative h-32 w-full" do
          Toast :top, :center do
            Alert :info do
              span do
                "Top center position."
              end
            end
          end
        end
      end
    end
  end
end
