# frozen_string_literal: true

module Examples
  module Carousels
    class WithNavigationButtonsComponent < Base
      def title
        "With navigation buttons"
      end

      def example
        Carousel class: "w-full" do |carousel|
          carousel.item id: "nav-slide1", class: "relative w-full" do
            img src: "https://img.daisyui.com/images/stock/photo-1625726411847-8cbb60cc71e6.webp", alt: "Slide 1", class: "w-full"
            div class: "absolute left-5 right-5 top-1/2 flex -translate-y-1/2 transform justify-between" do
              a href: "#nav-slide4", class: "btn btn-circle" do
                "❮"
              end
              a href: "#nav-slide2", class: "btn btn-circle" do
                "❯"
              end
            end
          end

          carousel.item id: "nav-slide2", class: "relative w-full" do
            img src: "https://img.daisyui.com/images/stock/photo-1609621838510-5ad474b7d25d.webp", alt: "Slide 2", class: "w-full"
            div class: "absolute left-5 right-5 top-1/2 flex -translate-y-1/2 transform justify-between" do
              a href: "#nav-slide1", class: "btn btn-circle" do
                "❮"
              end
              a href: "#nav-slide3", class: "btn btn-circle" do
                "❯"
              end
            end
          end

          carousel.item id: "nav-slide3", class: "relative w-full" do
            img src: "https://img.daisyui.com/images/stock/photo-1414694762283-acccc27bca85.webp", alt: "Slide 3", class: "w-full"
            div class: "absolute left-5 right-5 top-1/2 flex -translate-y-1/2 transform justify-between" do
              a href: "#nav-slide2", class: "btn btn-circle" do
                "❮"
              end
              a href: "#nav-slide4", class: "btn btn-circle" do
                "❯"
              end
            end
          end

          carousel.item id: "nav-slide4", class: "relative w-full" do
            img src: "https://img.daisyui.com/images/stock/photo-1665553365602-b2fb8e5d1707.webp", alt: "Slide 4", class: "w-full"
            div class: "absolute left-5 right-5 top-1/2 flex -translate-y-1/2 transform justify-between" do
              a href: "#nav-slide3", class: "btn btn-circle" do
                "❮"
              end
              a href: "#nav-slide1", class: "btn btn-circle" do
                "❯"
              end
            end
          end
        end
      end
    end
  end
end
