module Examples
  module Progresses
    class ShowView < BaseView
      def view_template
        title do
          "Progress"
        end

        render_examples [
          BasicComponent,
          WithColorsComponent,
          IndeterminateComponent
        ]
      end
    end
  end
end
