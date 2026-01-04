# frozen_string_literal: true

module Examples
  module Tabs
    class ShowView < BaseView
      def view_template
        title do
          "Tabs"
        end

        render_examples [
          BasicComponent,
          BorderedComponent,
          LiftedComponent,
          BoxedComponent,
          SizesComponent,
          WithContentComponent,
        ]
      end
    end
  end
end
