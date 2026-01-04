# frozen_string_literal: true

module Examples
  module Toasts
    class ShowView < BaseView
      def view_template
        title do
          "Toast"
        end

        render_examples [
          BasicComponent,
          TopStartComponent,
          TopCenterComponent,
          TopEndComponent,
          MiddleStartComponent,
          MiddleCenterComponent,
          MiddleEndComponent,
          WithAlertComponent,
        ]
      end
    end
  end
end
