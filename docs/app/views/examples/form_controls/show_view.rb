# frozen_string_literal: true

module Examples
  module FormControls
    class ShowView < BaseView
      def view_template
        title do
          "Form Control"
        end

        render_examples [
          BasicComponent,
          WithLabelComponent,
          WithHelperTextComponent,
          FullFormComponent,
        ]
      end
    end
  end
end
