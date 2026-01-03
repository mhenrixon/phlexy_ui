module Examples
  module Steps
    class BasicComponent < Base
      def title
        "Steps"
      end

      def example
        render DaisyUI::Steps.new(:horizontal) { |steps|
          steps.step(:primary) { "Register" }
          steps.step(:primary) { "Choose plan" }
          steps.step { "Purchase" }
          steps.step { "Receive product" }
        }
      end
    end
  end
end
