# frozen_string_literal: true

module Examples
  module Carousels
    class ShowView < BaseView
      def view_template
        title do
          "Carousel"
        end

        render_examples [
          BasicComponent,
          SnapToCenterComponent,
          SnapToEndComponent,
          FullWidthItemsComponent,
          HalfWidthItemsComponent,
          VerticalComponent,
          WithIndicatorsComponent,
          WithNavigationButtonsComponent,
        ]
      end
    end
  end
end
