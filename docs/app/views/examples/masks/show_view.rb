# frozen_string_literal: true

module Examples
  module Masks
    class ShowView < BaseView
      def view_template
        title do
          "Mask"
        end

        render_examples [
          BasicShapesComponent,
          TrianglesComponent,
          StarsComponent,
          HalfMasksComponent,
        ]
      end
    end
  end
end
