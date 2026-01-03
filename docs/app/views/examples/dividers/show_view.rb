module Examples
  module Dividers
    class ShowView < BaseView
      def view_template
        title do
          "Divider"
        end

        render_examples [
          BasicComponent,
          WithTextComponent,
          HorizontalComponent,
          WithColorsComponent,
          PositionsComponent,
          ResponsiveComponent
        ]
      end
    end
  end
end
