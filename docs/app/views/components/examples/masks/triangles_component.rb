module Examples
  module Masks
    class TrianglesComponent < Base
      def title
        "Triangle masks"
      end

      def example
        div class: "flex flex-wrap gap-4 items-center" do
          Mask :triangle, as: :img, src: "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp", alt: "Triangle", class: "w-20"
          Mask :triangle_2, as: :img, src: "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp", alt: "Triangle 2", class: "w-20"
          Mask :triangle_3, as: :img, src: "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp", alt: "Triangle 3", class: "w-20"
          Mask :triangle_4, as: :img, src: "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp", alt: "Triangle 4", class: "w-20"
        end
      end
    end
  end
end
