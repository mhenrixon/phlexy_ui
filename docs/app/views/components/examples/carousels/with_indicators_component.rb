module Examples
  module Carousels
    class WithIndicatorsComponent < Base
      def title
        "With indicator buttons"
      end

      def example
        div class: "w-full" do
          Carousel class: "w-full" do |carousel|
            carousel.item id: "item1", class: "w-full" do
              img src: "https://img.daisyui.com/images/stock/photo-1625726411847-8cbb60cc71e6.webp", alt: "Slide 1", class: "w-full"
            end

            carousel.item id: "item2", class: "w-full" do
              img src: "https://img.daisyui.com/images/stock/photo-1609621838510-5ad474b7d25d.webp", alt: "Slide 2", class: "w-full"
            end

            carousel.item id: "item3", class: "w-full" do
              img src: "https://img.daisyui.com/images/stock/photo-1414694762283-acccc27bca85.webp", alt: "Slide 3", class: "w-full"
            end

            carousel.item id: "item4", class: "w-full" do
              img src: "https://img.daisyui.com/images/stock/photo-1665553365602-b2fb8e5d1707.webp", alt: "Slide 4", class: "w-full"
            end
          end

          div class: "flex w-full justify-center gap-2 py-2" do
            a href: "#item1", class: "btn btn-xs" do
              "1"
            end
            a href: "#item2", class: "btn btn-xs" do
              "2"
            end
            a href: "#item3", class: "btn btn-xs" do
              "3"
            end
            a href: "#item4", class: "btn btn-xs" do
              "4"
            end
          end
        end
      end
    end
  end
end
