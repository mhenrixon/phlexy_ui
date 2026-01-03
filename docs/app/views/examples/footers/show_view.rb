# frozen_string_literal: true

module Examples
  module Footers
    class ShowView < BaseView
      def view_template
        title do
          "Footer"
        end

        render_examples [
          BasicComponent,
          CenteredComponent,
          WithTitleComponent,
          HorizontalComponent,
        ]
      end
    end
  end
end
