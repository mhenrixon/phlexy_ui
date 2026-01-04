# frozen_string_literal: true

module Examples
  module Kbds
    class InTextComponent < Base
      def title
        "In text"
      end

      def example
        p do
          plain "Press "
          Kbd do
            "F"
          end
          plain " to pay respects."
        end
      end
    end
  end
end
