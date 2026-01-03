module Examples
  module Ratings
    class ShowView < BaseView
      def view_template
        title do
          "Rating"
        end

        render_examples [
          BasicComponent,
          SizesComponent,
          HalfStarsComponent,
          WithHiddenComponent,
          MaskShapesComponent,
          ReadOnlyComponent
        ]
      end
    end
  end
end
