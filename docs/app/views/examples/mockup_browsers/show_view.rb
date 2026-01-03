# frozen_string_literal: true

module Examples
  module MockupBrowsers
    class ShowView < BaseView
      def view_template
        title do
          "Mockup Browser"
        end

        render_examples [
          BasicComponent,
          WithBorderComponent,
          WithBackgroundComponent,
        ]
      end
    end
  end
end
