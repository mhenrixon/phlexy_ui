module Examples
  module HoverGalleries
    class BasicComponent < Base
      def title
        "Hover gallery"
      end

      def example
        HoverGallery do
          img src: "https://img.daisyui.com/images/stock/photo-1559703248-dcaaec9fab78.webp", alt: "Image 1"
          img src: "https://img.daisyui.com/images/stock/photo-1565098772267-60af42b81ef2.webp", alt: "Image 2"
          img src: "https://img.daisyui.com/images/stock/photo-1572635148818-ef6fd45eb394.webp", alt: "Image 3"
        end
      end
    end
  end
end
