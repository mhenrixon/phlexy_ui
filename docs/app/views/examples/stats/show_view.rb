module Examples
  module Stats
    class ShowView < BaseView
      def view_template
        title do
          "Stat"
        end

        render_examples [
          BasicComponent,
          IconsOrImageComponent,
          CenteredItemsComponent,
          VerticalComponent,
          ResponsiveComponent,
          WithCustomColorsComponent
        ]
      end
    end
  end
end
