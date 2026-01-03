module Examples
  module Heroes
    class ShowView < BaseView
      def view_template
        title do
          "Hero"
        end

        render_examples [
          BasicComponent,
          WithFigureComponent,
          WithOverlayComponent,
          WithFormComponent
        ]
      end
    end
  end
end
