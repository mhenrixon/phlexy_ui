module Examples
  module Radios
    class BasicComponent < Base
      def title
        "Radio"
      end

      def example
        Radio name: "radio-1", checked: true
        Radio name: "radio-1"
      end
    end
  end
end
