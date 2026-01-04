# frozen_string_literal: true

module Examples
  module Statuses
    class ShowView < BaseView
      def view_template
        title do
          "Status"
        end

        render_examples [
          BasicComponent,
          WithColorsComponent,
          SizesComponent,
          WithTextComponent,
        ]
      end
    end
  end
end
