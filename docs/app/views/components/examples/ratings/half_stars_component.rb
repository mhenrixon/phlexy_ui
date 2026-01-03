module Examples
  module Ratings
    class HalfStarsComponent < Base
      def title
        "Half stars"
      end

      def example
        Rating :half do
          input type: "radio", name: "rating-half", class: "mask mask-star-2 mask-half-1", aria_label: "0.5 star"
          input type: "radio", name: "rating-half", class: "mask mask-star-2 mask-half-2", aria_label: "1 star"
          input type: "radio", name: "rating-half", class: "mask mask-star-2 mask-half-1", aria_label: "1.5 stars"
          input type: "radio", name: "rating-half", class: "mask mask-star-2 mask-half-2", aria_label: "2 stars"
          input type: "radio", name: "rating-half", class: "mask mask-star-2 mask-half-1", aria_label: "2.5 stars", checked: true
          input type: "radio", name: "rating-half", class: "mask mask-star-2 mask-half-2", aria_label: "3 stars"
          input type: "radio", name: "rating-half", class: "mask mask-star-2 mask-half-1", aria_label: "3.5 stars"
          input type: "radio", name: "rating-half", class: "mask mask-star-2 mask-half-2", aria_label: "4 stars"
          input type: "radio", name: "rating-half", class: "mask mask-star-2 mask-half-1", aria_label: "4.5 stars"
          input type: "radio", name: "rating-half", class: "mask mask-star-2 mask-half-2", aria_label: "5 stars"
        end
      end
    end
  end
end
