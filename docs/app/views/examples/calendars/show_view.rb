module Examples
  module Calendars
    class ShowView < BaseView
      def view_template
        title do
          "Calendar"
        end

        render_examples [
          BasicComponent,
          WithPikadayComponent
        ]
      end
    end
  end
end
