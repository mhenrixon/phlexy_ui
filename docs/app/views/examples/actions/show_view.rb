# frozen_string_literal: true

module Examples
  module Actions
    class ShowView < BaseView
      def view_template
        title do
          "Action"
        end

        render_examples [
          BasicComponent,
        ]
      end
    end
  end
end
