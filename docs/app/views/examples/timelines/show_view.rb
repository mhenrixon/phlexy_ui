module Examples
  module Timelines
    class ShowView < BaseView
      def view_template
        title do
          "Timeline"
        end

        render_examples [
          BasicComponent,
          VerticalComponent,
          HorizontalComponent,
          WithColorsComponent,
          SnapIconComponent,
          CompactComponent,
          ResponsiveComponent
        ]
      end
    end
  end
end
