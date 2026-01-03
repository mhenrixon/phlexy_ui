module Examples
  module Toggles
    class WithColorsComponent < Base
      def title
        "Toggle with colors"
      end

      def example
        Toggle :primary, checked: true
        Toggle :secondary, checked: true
        Toggle :accent, checked: true
        Toggle :neutral, checked: true
        Toggle :success, checked: true
        Toggle :warning, checked: true
        Toggle :info, checked: true
        Toggle :error, checked: true
      end
    end
  end
end
