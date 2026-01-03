module Examples
  module Steps
    class WithDataContentComponent < Base
      def title
        "Steps with data-content"
      end

      def example
        DaisyUI::Steps.new :horizontal do |steps|
          steps.step(:neutral, data: { content: "?" }) { "Step 1" }
          steps.step(:neutral, data: { content: "!" }) { "Step 2" }
          steps.step(:neutral, data: { content: "★" }) { "Step 3" }
          steps.step(:neutral, data: { content: "●" }) { "Step 4" }
        end
      end
    end
  end
end
