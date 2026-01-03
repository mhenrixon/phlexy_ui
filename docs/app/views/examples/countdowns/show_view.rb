module Examples
  module Countdowns
    class ShowView < BaseView
      def view_template
        title do
          "Countdown"
        end

        render_examples [
          BasicComponent,
          LargeTextComponent,
          WithLabelsComponent,
          ClockCountdownComponent,
          InBoxesComponent
        ]
      end
    end
  end
end
