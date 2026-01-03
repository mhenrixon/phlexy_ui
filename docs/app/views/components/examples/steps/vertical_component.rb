# frozen_string_literal: true

module Examples
  module Steps
    class VerticalComponent < Base
      def title
        "Vertical steps"
      end

      def example
        render DaisyUI::Steps.new(:vertical) { |steps|
          steps.step(:primary) { "Register" }
          steps.step(:primary) { "Choose plan" }
          steps.step { "Purchase" }
          steps.step { "Receive product" }
        }
      end
    end
  end
end
