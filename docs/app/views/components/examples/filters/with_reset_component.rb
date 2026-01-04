# frozen_string_literal: true

module Examples
  module Filters
    class WithResetComponent < Base
      def title
        "Filter with reset"
      end

      def example
        Filter do |filter|
          filter.reset name: "filter-reset", aria_label: "Reset"
          input type: "radio", name: "filter-reset", class: "btn", aria_label: "Electronics"
          input type: "radio", name: "filter-reset", class: "btn", aria_label: "Clothing", checked: true
          input type: "radio", name: "filter-reset", class: "btn", aria_label: "Books"
        end
      end
    end
  end
end
