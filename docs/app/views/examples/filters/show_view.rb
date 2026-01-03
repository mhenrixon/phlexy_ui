module Examples
  module Filters
    class ShowView < BaseView
      def view_template
        title do
          "Filter"
        end

        render_examples [
          BasicComponent,
          WithResetComponent
        ]
      end
    end
  end
end
