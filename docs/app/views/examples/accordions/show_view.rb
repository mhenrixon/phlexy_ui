module Examples
  module Accordions
    class ShowView < BaseView
      def view_template
        title do
          "Accordion"
        end

        render_examples [
          BasicComponent,
          WithArrowIconComponent,
          WithPlusMinusIconComponent,
          WithJoinComponent,
          WithCustomColorsComponent,
          WithBackgroundColorComponent
        ]
      end
    end
  end
end
