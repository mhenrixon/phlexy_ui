module Examples
  module Steps
    class VerticalComponent < Base
      def title
        "Vertical steps"
      end

      def example
        DaisyUI::Steps.new :vertical do |steps|
          steps.step(:primary) { "Register" }
          steps.step(:primary) { "Choose plan" }
          steps.step { "Purchase" }
          steps.step { "Receive product" }
        end
      end
    end
  end
end
