module Examples
  module Swaps
    class TextComponent < Base
      def title
        "Swap text"
      end

      def example
        Swap do |swap|
          input type: "checkbox"
          swap.on do
            h1(class: "text-xl font-bold") { "ON" }
          end
          swap.off do
            h1(class: "text-xl font-bold") { "OFF" }
          end
        end
      end
    end
  end
end
