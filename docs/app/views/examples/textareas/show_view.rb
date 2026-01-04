# frozen_string_literal: true

module Examples
  module Textareas
    class ShowView < BaseView
      def view_template
        title do
          "Textarea"
        end

        render_examples [
          BasicComponent,
          WithColorsComponent,
          SizesComponent,
          GhostComponent,
          DisabledComponent,
          WithLabelComponent,
        ]
      end
    end
  end
end
