# frozen_string_literal: true

module Examples
  module ThemeControllers
    class BasicComponent < Base
      def title
        "Theme controller with checkbox"
      end

      def example
        ThemeController theme_value: "dark"
      end
    end
  end
end
