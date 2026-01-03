# frozen_string_literal: true

module Examples
  module Drawers
    class ShowView < BaseView
      def view_template
        title do
          "Drawer"
        end

        render_examples [
          BasicComponent,
          EndPositionComponent,
          ResponsiveComponent,
          WithNavbarComponent,
        ]
      end
    end
  end
end
