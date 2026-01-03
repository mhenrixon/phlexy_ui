module Examples
  module Fieldsets
    class ShowView < BaseView
      def view_template
        title do
          "Fieldset"
        end

        render_examples [
          BasicComponent,
          WithLegendComponent,
          WithMultipleInputsComponent,
          LoginFormComponent
        ]
      end
    end
  end
end
