# frozen_string_literal: true

module Examples
  module Docks
    class ShowView < BaseView
      def view_template
        title do
          "Dock"
        end

        render_examples [
          BasicComponent,
          SizesComponent,
          WithLabelsComponent,
          WithActiveComponent,
        ]
      end
    end
  end
end
