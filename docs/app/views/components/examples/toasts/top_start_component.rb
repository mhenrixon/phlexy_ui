module Examples
  module Toasts
    class TopStartComponent < Base
      def title
        "Toast top start"
      end

      def example
        div class: "relative h-32 w-full" do
          Toast :top, :start do
            Alert :info do
              span do
                "Top start position."
              end
            end
          end
        end
      end
    end
  end
end
