module Examples
  module Toasts
    class MiddleCenterComponent < Base
      def title
        "Toast middle center"
      end

      def example
        div class: "relative h-32 w-full" do
          Toast :middle, :center do
            Alert :info do
              span do
                "Middle center position."
              end
            end
          end
        end
      end
    end
  end
end
