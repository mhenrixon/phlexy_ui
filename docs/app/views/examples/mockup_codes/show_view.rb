# frozen_string_literal: true

module Examples
  module MockupCodes
    class ShowView < BaseView
      def view_template
        title do
          "Mockup Code"
        end

        render_examples [
          BasicComponent,
          WithLinePrefixComponent,
          MultiLineComponent,
          WithColorComponent,
        ]
      end
    end
  end
end
