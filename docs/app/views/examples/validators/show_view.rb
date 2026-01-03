module Examples
  module Validators
    class ShowView < BaseView
      def view_template
        title do
          "Validator"
        end

        render_examples [
          BasicComponent,
          WithHintComponent,
          WithInputComponent
        ]
      end
    end
  end
end
