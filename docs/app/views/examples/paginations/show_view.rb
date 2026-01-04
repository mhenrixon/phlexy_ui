# frozen_string_literal: true

module Examples
  module Paginations
    class ShowView < BaseView
      def view_template
        title do
          "Pagination"
        end

        render_examples [
          BasicComponent,
          SizesComponent,
          WithPrevNextComponent,
          WithDisabledComponent,
        ]
      end
    end
  end
end
