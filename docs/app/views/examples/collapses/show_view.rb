# frozen_string_literal: true

module Examples
  module Collapses
    class ShowView < BaseView
      def view_template
        title do
          "Collapse"
        end

        render_examples [
          BasicComponent,
          WithArrowIconComponent,
          WithPlusMinusIconComponent,
          WithFocusComponent,
          ForceOpenComponent,
          ForceCloseComponent,
          WithCustomColorsComponent,
        ]
      end
    end
  end
end
