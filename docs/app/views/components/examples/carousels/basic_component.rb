module Examples
  module Carousels
    class BasicComponent < Base
      def title
        "Carousel (snap to start)"
      end

      def example
        Carousel class: "rounded-box w-64" do |carousel|
          carousel.item do
            img src: "https://img.daisyui.com/images/stock/photo-1559703248-dcaaec9fab78.webp", alt: "Carousel item 1"
          end

          carousel.item do
            img src: "https://img.daisyui.com/images/stock/photo-1565098772267-60af42b81ef2.webp", alt: "Carousel item 2"
          end

          carousel.item do
            img src: "https://img.daisyui.com/images/stock/photo-1572635148818-ef6fd45eb394.webp", alt: "Carousel item 3"
          end

          carousel.item do
            img src: "https://img.daisyui.com/images/stock/photo-1494253109108-2e30c049369b.webp", alt: "Carousel item 4"
          end
        end
      end
    end
  end
end
