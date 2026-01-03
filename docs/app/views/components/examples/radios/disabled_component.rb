module Examples
  module Radios
    class DisabledComponent < Base
      def title
        "Disabled radio"
      end

      def example
        Radio name: "radio-disabled", disabled: true
        Radio name: "radio-disabled", disabled: true, checked: true
      end
    end
  end
end
