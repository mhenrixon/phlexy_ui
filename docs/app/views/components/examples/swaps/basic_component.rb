# frozen_string_literal: true

module Examples
  module Swaps
    class BasicComponent < Base
      def title
        "Swap"
      end

      def example
        Swap do |swap|
          input type: "checkbox"
          swap.on { "ON" }
          swap.off { "OFF" }
        end
      end
    end
  end
end
