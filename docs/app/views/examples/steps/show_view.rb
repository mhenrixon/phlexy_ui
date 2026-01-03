module Examples
  module Steps
    class ShowView < BaseView
      def view_template
        title do
          "Steps"
        end

        render_examples [
          BasicComponent,
          VerticalComponent,
          WithColorsComponent,
          WithDataContentComponent,
          ResponsiveComponent
        ]
      end
    end
  end
end
