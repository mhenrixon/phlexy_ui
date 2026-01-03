module Examples
  module FileInputs
    class ShowView < BaseView
      def view_template
        title do
          "File Input"
        end

        render_examples [
          BasicComponent,
          WithColorsComponent,
          SizesComponent,
          GhostComponent,
          DisabledComponent,
          WithLabelComponent
        ]
      end
    end
  end
end
