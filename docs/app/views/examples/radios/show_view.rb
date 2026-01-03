module Examples
  module Radios
    class ShowView < BaseView
      def view_template
        title do
          "Radio"
        end

        render_examples [
          BasicComponent,
          WithColorsComponent,
          SizesComponent,
          DisabledComponent,
          WithLabelComponent
        ]
      end
    end
  end
end
