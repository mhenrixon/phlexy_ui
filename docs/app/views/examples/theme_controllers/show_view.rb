# frozen_string_literal: true

module Examples
  module ThemeControllers
    class ShowView < BaseView
      def view_template
        title do
          "Theme Controller"
        end

        render_examples [
          BasicComponent,
          WithToggleComponent,
          WithSwapComponent,
          WithDropdownComponent,
        ]
      end
    end
  end
end
