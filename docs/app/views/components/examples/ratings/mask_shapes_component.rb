module Examples
  module Ratings
    class MaskShapesComponent < Base
      def title
        "Different mask shapes"
      end

      def example
        div class: "flex flex-col gap-4" do
          Rating do
            input type: "radio", name: "rating-star2", class: "mask mask-star-2 bg-orange-400", aria_label: "1 star"
            input type: "radio", name: "rating-star2", class: "mask mask-star-2 bg-orange-400", aria_label: "2 stars", checked: true
            input type: "radio", name: "rating-star2", class: "mask mask-star-2 bg-orange-400", aria_label: "3 stars"
            input type: "radio", name: "rating-star2", class: "mask mask-star-2 bg-orange-400", aria_label: "4 stars"
            input type: "radio", name: "rating-star2", class: "mask mask-star-2 bg-orange-400", aria_label: "5 stars"
          end

          Rating do
            input type: "radio", name: "rating-heart", class: "mask mask-heart bg-red-400", aria_label: "1 heart"
            input type: "radio", name: "rating-heart", class: "mask mask-heart bg-red-400", aria_label: "2 hearts", checked: true
            input type: "radio", name: "rating-heart", class: "mask mask-heart bg-red-400", aria_label: "3 hearts"
            input type: "radio", name: "rating-heart", class: "mask mask-heart bg-red-400", aria_label: "4 hearts"
            input type: "radio", name: "rating-heart", class: "mask mask-heart bg-red-400", aria_label: "5 hearts"
          end
        end
      end
    end
  end
end
