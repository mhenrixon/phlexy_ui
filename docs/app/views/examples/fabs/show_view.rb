# frozen_string_literal: true

module Examples
  module Fabs
    class ShowView < BaseView
      def view_template
        title do
          "Fab"
        end

        render_examples [
          BasicComponent,
          FlowerComponent,
          WithMainActionComponent,
        ]
      end
    end
  end
end
