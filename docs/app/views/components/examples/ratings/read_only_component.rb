# frozen_string_literal: true

module Examples
  module Ratings
    class ReadOnlyComponent < Base
      def title
        "Read-only rating"
      end

      def example
        Rating do
          input type: "radio", name: "rating-readonly", class: "mask mask-star", disabled: true, aria_label: "1 star"
          input type: "radio", name: "rating-readonly", class: "mask mask-star", disabled: true, aria_label: "2 stars"
          input type: "radio", name: "rating-readonly", class: "mask mask-star", disabled: true, checked: true, aria_label: "3 stars"
          input type: "radio", name: "rating-readonly", class: "mask mask-star", disabled: true, aria_label: "4 stars"
          input type: "radio", name: "rating-readonly", class: "mask mask-star", disabled: true, aria_label: "5 stars"
        end
      end
    end
  end
end
