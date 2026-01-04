# frozen_string_literal: true

module Examples
  module MockupPhones
    class ShowView < BaseView
      def view_template
        title do
          "Mockup Phone"
        end

        render_examples [
          BasicComponent,
          WithColorComponent,
        ]
      end
    end
  end
end
