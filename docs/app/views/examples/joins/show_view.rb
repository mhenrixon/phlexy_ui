# frozen_string_literal: true

module Examples
  module Joins
    class ShowView < BaseView
      def view_template
        title do
          "Join"
        end

        render_examples [
          BasicComponent,
          VerticalComponent,
          ButtonsComponent,
          InputsComponent,
          RadioButtonsComponent,
        ]
      end
    end
  end
end
