module Examples
  module Indicators
    class ShowView < BaseView
      def view_template
        title do
          "Indicator"
        end

        render_examples [
          BasicComponent,
          PositionsComponent,
          BadgeIndicatorComponent,
          ForButtonComponent,
          ForInputComponent
        ]
      end
    end
  end
end
