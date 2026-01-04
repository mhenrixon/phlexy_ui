# frozen_string_literal: true

module Examples
  module Filters
    class BasicComponent < Base
      def title
        "Filter"
      end

      def example
        Filter do
          input type: "radio", name: "filter-basic", class: "btn", aria_label: "All", checked: true
          input type: "radio", name: "filter-basic", class: "btn", aria_label: "Active"
          input type: "radio", name: "filter-basic", class: "btn", aria_label: "Completed"
        end
      end
    end
  end
end
