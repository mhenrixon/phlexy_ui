module Examples
  module Toggles
    class BasicComponent < Base
      def title
        "Toggle"
      end

      def example
        Toggle
        Toggle checked: true
      end
    end
  end
end
