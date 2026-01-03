# frozen_string_literal: true

module Examples
  module Selects
    class ShowView < BaseView
      def view_template
        title do
          "Select"
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
