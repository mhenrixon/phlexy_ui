module Examples
  module Masks
    class StarsComponent < Base
      def title
        "Star masks"
      end

      def example
        div class: "flex flex-wrap gap-4 items-center" do
          Mask :star, as: :img, src: "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp", alt: "Star", class: "w-20"
          Mask :star_2, as: :img, src: "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp", alt: "Star 2", class: "w-20"
        end
      end
    end
  end
end
