module Examples
  module Swaps
    class RotateComponent < Base
      def title
        "Swap with rotate effect"
      end

      def example
        Swap :rotate, class: "text-2xl" do |swap|
          input type: "checkbox"
          swap.on { "🌚" }
          swap.off { "🌞" }
        end
      end
    end
  end
end
