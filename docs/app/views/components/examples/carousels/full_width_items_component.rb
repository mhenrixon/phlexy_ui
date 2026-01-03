module Examples
  module Carousels
    class FullWidthItemsComponent < Base
      def title
        "Full width items"
      end

      def example
        Carousel class: "w-full" do |carousel|
          carousel.item id: "slide1", class: "w-full" do
            img src: "https://img.daisyui.com/images/stock/photo-1625726411847-8cbb60cc71e6.webp", alt: "Slide 1", class: "w-full"
          end

          carousel.item id: "slide2", class: "w-full" do
            img src: "https://img.daisyui.com/images/stock/photo-1609621838510-5ad474b7d25d.webp", alt: "Slide 2", class: "w-full"
          end

          carousel.item id: "slide3", class: "w-full" do
            img src: "https://img.daisyui.com/images/stock/photo-1414694762283-acccc27bca85.webp", alt: "Slide 3", class: "w-full"
          end

          carousel.item id: "slide4", class: "w-full" do
            img src: "https://img.daisyui.com/images/stock/photo-1665553365602-b2fb8e5d1707.webp", alt: "Slide 4", class: "w-full"
          end
        end
      end
    end
  end
end
