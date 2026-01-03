module Examples
  module Toasts
    class TopEndComponent < Base
      def title
        "Toast top end"
      end

      def example
        div class: "relative h-32 w-full" do
          Toast :top, :end do
            Alert :info do
              span do
                "Top end position."
              end
            end
          end
        end
      end
    end
  end
end
