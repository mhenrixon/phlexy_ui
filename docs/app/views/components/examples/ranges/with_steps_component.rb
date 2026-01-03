module Examples
  module Ranges
    class WithStepsComponent < Base
      def title
        "Range with steps"
      end

      def example
        Range :primary, min: 0, max: 100, value: 25, step: 25
      end
    end
  end
end
