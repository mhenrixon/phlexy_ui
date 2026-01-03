module Examples
  module Masks
    class HalfMasksComponent < Base
      def title
        "Half masks (for ratings)"
      end

      def example
        div class: "flex gap-4 items-center" do
          div class: "flex" do
            Mask :half_1, :star_2, as: :div, class: "bg-orange-400 w-6 h-6"
            Mask :half_2, :star_2, as: :div, class: "bg-orange-400 w-6 h-6"
          end
          div class: "flex" do
            Mask :half_1, :heart, as: :div, class: "bg-red-400 w-6 h-6"
            Mask :half_2, :heart, as: :div, class: "bg-red-400 w-6 h-6"
          end
        end
      end
    end
  end
end
