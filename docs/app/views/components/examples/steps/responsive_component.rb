module Examples
  module Steps
    class ResponsiveComponent < Base
      def title
        "Responsive (vertical on mobile, horizontal on desktop)"
      end

      def example
        DaisyUI::Steps.new :vertical, "lg:steps-horizontal": true do |steps|
          steps.step(:primary) { "Register" }
          steps.step(:primary) { "Choose plan" }
          steps.step { "Purchase" }
          steps.step { "Receive product" }
        end
      end
    end
  end
end
