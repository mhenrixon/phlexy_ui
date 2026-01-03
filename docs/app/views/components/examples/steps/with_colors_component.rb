module Examples
  module Steps
    class WithColorsComponent < Base
      def title
        "Steps with colors"
      end

      def example
        render DaisyUI::Steps.new(:horizontal) { |steps|
          steps.step(:success) { "Success" }
          steps.step(:info) { "Info" }
          steps.step(:warning) { "Warning" }
          steps.step(:error) { "Error" }
        }
      end
    end
  end
end
