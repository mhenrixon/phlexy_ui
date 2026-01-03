# frozen_string_literal: true

module Examples
  module Lists
    class ShowView < BaseView
      def view_template
        title do
          "List"
        end

        render_examples [
          BasicComponent,
          WithColWrapComponent,
          WithColGrowComponent,
          WithAvatarsComponent,
        ]
      end
    end
  end
end
