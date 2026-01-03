# frozen_string_literal: true

module Examples
  module MockupWindows
    class ShowView < BaseView
      def view_template
        title do
          "Mockup Window"
        end

        render_examples [
          BasicComponent,
          WithBorderComponent,
        ]
      end
    end
  end
end
