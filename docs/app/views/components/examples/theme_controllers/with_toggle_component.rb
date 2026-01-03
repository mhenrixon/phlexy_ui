module Examples
  module ThemeControllers
    class WithToggleComponent < Base
      def title
        "Theme controller with toggle"
      end

      def example
        ThemeController :toggle, theme_value: "dark"
      end
    end
  end
end
