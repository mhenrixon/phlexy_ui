module Examples
  module Swaps
    class FlipComponent < Base
      def title
        "Swap with flip effect"
      end

      def example
        Swap :flip, class: "text-2xl" do |swap|
          input type: "checkbox"
          swap.on { "😈" }
          swap.off { "😇" }
        end
      end
    end
  end
end
