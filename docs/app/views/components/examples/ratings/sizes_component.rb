module Examples
  module Ratings
    class SizesComponent < Base
      def title
        "Rating sizes"
      end

      def example
        div class: "flex flex-col gap-4" do
          Rating :xs do
            input type: "radio", name: "rating-xs", class: "mask mask-star", aria_label: "1 star"
            input type: "radio", name: "rating-xs", class: "mask mask-star", aria_label: "2 stars", checked: true
            input type: "radio", name: "rating-xs", class: "mask mask-star", aria_label: "3 stars"
          end

          Rating :sm do
            input type: "radio", name: "rating-sm", class: "mask mask-star", aria_label: "1 star"
            input type: "radio", name: "rating-sm", class: "mask mask-star", aria_label: "2 stars", checked: true
            input type: "radio", name: "rating-sm", class: "mask mask-star", aria_label: "3 stars"
          end

          Rating :md do
            input type: "radio", name: "rating-md", class: "mask mask-star", aria_label: "1 star"
            input type: "radio", name: "rating-md", class: "mask mask-star", aria_label: "2 stars", checked: true
            input type: "radio", name: "rating-md", class: "mask mask-star", aria_label: "3 stars"
          end

          Rating :lg do
            input type: "radio", name: "rating-lg", class: "mask mask-star", aria_label: "1 star"
            input type: "radio", name: "rating-lg", class: "mask mask-star", aria_label: "2 stars", checked: true
            input type: "radio", name: "rating-lg", class: "mask mask-star", aria_label: "3 stars"
          end

          Rating :xl do
            input type: "radio", name: "rating-xl", class: "mask mask-star", aria_label: "1 star"
            input type: "radio", name: "rating-xl", class: "mask mask-star", aria_label: "2 stars", checked: true
            input type: "radio", name: "rating-xl", class: "mask mask-star", aria_label: "3 stars"
          end
        end
      end
    end
  end
end
