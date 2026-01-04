# frozen_string_literal: true

module Examples
  module Inputs
    class ShowView < BaseView
      def view_template
        title do
          "Input"
        end

        render_examples [
          BasicComponent,
          WithColorsComponent,
          SizesComponent,
          GhostComponent,
          DisabledComponent,
          WithLabelComponent,
          TypesComponent,
        ]
      end
    end
  end
end
