module Examples
  module Carousels
    class HalfWidthItemsComponent < Base
      def title
        "Half width items"
      end

      def example
        Carousel class: "rounded-box w-full" do |carousel|
          carousel.item class: "w-1/2" do
            img src: "https://img.daisyui.com/images/stock/photo-1559703248-dcaaec9fab78.webp", alt: "Carousel item 1", class: "w-full"
          end

          carousel.item class: "w-1/2" do
            img src: "https://img.daisyui.com/images/stock/photo-1565098772267-60af42b81ef2.webp", alt: "Carousel item 2", class: "w-full"
          end

          carousel.item class: "w-1/2" do
            img src: "https://img.daisyui.com/images/stock/photo-1572635148818-ef6fd45eb394.webp", alt: "Carousel item 3", class: "w-full"
          end

          carousel.item class: "w-1/2" do
            img src: "https://img.daisyui.com/images/stock/photo-1494253109108-2e30c049369b.webp", alt: "Carousel item 4", class: "w-full"
          end
        end
      end
    end
  end
end
