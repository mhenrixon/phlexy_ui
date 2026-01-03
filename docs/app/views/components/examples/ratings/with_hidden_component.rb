# frozen_string_literal: true

module Examples
  module Ratings
    class WithHiddenComponent < Base
      def title
        "With hidden input (for no selection)"
      end

      def example
        Rating :hidden do
          input type: "radio", name: "rating-hidden", class: "rating-hidden", aria_label: "No rating"
          input type: "radio", name: "rating-hidden", class: "mask mask-star", aria_label: "1 star"
          input type: "radio", name: "rating-hidden", class: "mask mask-star", aria_label: "2 stars"
          input type: "radio", name: "rating-hidden", class: "mask mask-star", aria_label: "3 stars"
          input type: "radio", name: "rating-hidden", class: "mask mask-star", aria_label: "4 stars"
          input type: "radio", name: "rating-hidden", class: "mask mask-star", aria_label: "5 stars"
        end
      end
    end
  end
end
