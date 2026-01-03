module Examples
  module Swaps
    class ShowView < BaseView
      def view_template
        title do
          "Swap"
        end

        render_examples [
          BasicComponent,
          RotateComponent,
          FlipComponent,
          HamburgerComponent,
          TextComponent
        ]
      end
    end
  end
end
