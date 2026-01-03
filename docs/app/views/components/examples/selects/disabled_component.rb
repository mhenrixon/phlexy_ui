module Examples
  module Selects
    class DisabledComponent < Base
      def title
        "Disabled select"
      end

      def example
        Select disabled: true do
          option { "You cannot select" }
          option { "Option 1" }
          option { "Option 2" }
        end
      end
    end
  end
end
