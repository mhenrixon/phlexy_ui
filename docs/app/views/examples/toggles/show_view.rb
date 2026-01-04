# frozen_string_literal: true

module Examples
  module Toggles
    class ShowView < BaseView
      def view_template
        title do
          "Toggle"
        end

        render_examples [
          BasicComponent,
          WithColorsComponent,
          SizesComponent,
          DisabledComponent,
          WithLabelComponent,
        ]
      end
    end
  end
end
