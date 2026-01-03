# frozen_string_literal: true

module Examples
  module Labels
    class ShowView < BaseView
      def view_template
        title do
          "Label"
        end

        render_examples [
          BasicComponent,
          FloatingComponent,
          WithInputComponent,
          WithSelectComponent,
          SizesComponent,
        ]
      end
    end
  end
end
