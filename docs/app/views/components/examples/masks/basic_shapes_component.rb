module Examples
  module Masks
    class BasicShapesComponent < Base
      def title
        "Basic mask shapes"
      end

      def example
        div class: "flex flex-wrap gap-4 items-center" do
          Mask :squircle, as: :img, src: "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp", alt: "Squircle", class: "w-20"
          Mask :heart, as: :img, src: "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp", alt: "Heart", class: "w-20"
          Mask :hexagon, as: :img, src: "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp", alt: "Hexagon", class: "w-20"
          Mask :hexagon_2, as: :img, src: "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp", alt: "Hexagon 2", class: "w-20"
          Mask :decagon, as: :img, src: "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp", alt: "Decagon", class: "w-20"
          Mask :pentagon, as: :img, src: "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp", alt: "Pentagon", class: "w-20"
          Mask :diamond, as: :img, src: "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp", alt: "Diamond", class: "w-20"
          Mask :square, as: :img, src: "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp", alt: "Square", class: "w-20"
          Mask :circle, as: :img, src: "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp", alt: "Circle", class: "w-20"
        end
      end
    end
  end
end
