module Examples
  module Kbds
    class ShowView < BaseView
      def view_template
        title do
          "Kbd"
        end

        render_examples [
          BasicComponent,
          SizesComponent,
          InTextComponent,
          KeyCombinationComponent,
          ArrowKeysComponent,
          FunctionKeysComponent
        ]
      end
    end
  end
end
