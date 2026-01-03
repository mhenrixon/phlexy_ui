module Examples
  module Ratings
    class BasicComponent < Base
      def title
        "Rating"
      end

      def example
        Rating do
          input type: "radio", name: "rating-1", class: "mask mask-star", aria_label: "1 star"
          input type: "radio", name: "rating-1", class: "mask mask-star", aria_label: "2 stars", checked: true
          input type: "radio", name: "rating-1", class: "mask mask-star", aria_label: "3 stars"
          input type: "radio", name: "rating-1", class: "mask mask-star", aria_label: "4 stars"
          input type: "radio", name: "rating-1", class: "mask mask-star", aria_label: "5 stars"
        end
      end
    end
  end
end
