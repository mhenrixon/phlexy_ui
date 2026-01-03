module Examples
  module Toasts
    class MiddleEndComponent < Base
      def title
        "Toast middle end"
      end

      def example
        div class: "relative h-32 w-full" do
          Toast :middle, :end do
            Alert :info do
              span do
                "Middle end position."
              end
            end
          end
        end
      end
    end
  end
end
