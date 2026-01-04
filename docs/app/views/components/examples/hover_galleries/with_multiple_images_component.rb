# frozen_string_literal: true

module Examples
  module HoverGalleries
    class WithMultipleImagesComponent < Base
      def title
        "Hover gallery with more images"
      end

      def example
        HoverGallery do
          img src: "https://img.daisyui.com/images/stock/photo-1559703248-dcaaec9fab78.webp", alt: "Image 1"
          img src: "https://img.daisyui.com/images/stock/photo-1565098772267-60af42b81ef2.webp", alt: "Image 2"
          img src: "https://img.daisyui.com/images/stock/photo-1572635148818-ef6fd45eb394.webp", alt: "Image 3"
          img src: "https://img.daisyui.com/images/stock/photo-1494253109108-2e30c049369b.webp", alt: "Image 4"
          img src: "https://img.daisyui.com/images/stock/photo-1550258987-190a2d41a8ba.webp", alt: "Image 5"
        end
      end
    end
  end
end
