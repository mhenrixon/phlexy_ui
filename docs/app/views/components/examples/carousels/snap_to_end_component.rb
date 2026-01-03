module Examples
  module Carousels
    class SnapToEndComponent < Base
      def title
        "Snap to end"
      end

      def example
        Carousel :end, class: "rounded-box max-w-md space-x-4 p-4" do |carousel|
          carousel.item do
            img src: "https://img.daisyui.com/images/stock/photo-1559703248-dcaaec9fab78.webp", alt: "Carousel item 1", class: "rounded-box"
          end

          carousel.item do
            img src: "https://img.daisyui.com/images/stock/photo-1565098772267-60af42b81ef2.webp", alt: "Carousel item 2", class: "rounded-box"
          end

          carousel.item do
            img src: "https://img.daisyui.com/images/stock/photo-1572635148818-ef6fd45eb394.webp", alt: "Carousel item 3", class: "rounded-box"
          end

          carousel.item do
            img src: "https://img.daisyui.com/images/stock/photo-1494253109108-2e30c049369b.webp", alt: "Carousel item 4", class: "rounded-box"
          end
        end
      end
    end
  end
end
