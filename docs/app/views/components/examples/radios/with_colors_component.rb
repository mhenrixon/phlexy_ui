module Examples
  module Radios
    class WithColorsComponent < Base
      def title
        "Radio with colors"
      end

      def example
        Radio :primary, name: "radio-colors", checked: true
        Radio :secondary, name: "radio-colors"
        Radio :accent, name: "radio-colors"
        Radio :neutral, name: "radio-colors"
        Radio :success, name: "radio-colors"
        Radio :warning, name: "radio-colors"
        Radio :info, name: "radio-colors"
        Radio :error, name: "radio-colors"
      end
    end
  end
end
