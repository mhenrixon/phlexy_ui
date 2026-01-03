module Examples
  module Stacks
    class StackedImagesComponent < Base
      def title
        "Stacked images"
      end

      def example
        Stack do
          img src: "https://img.daisyui.com/images/stock/photo-1559703248-dcaaec9fab78.webp", alt: "Image 1", class: "rounded w-36"
          img src: "https://img.daisyui.com/images/stock/photo-1565098772267-60af42b81ef2.webp", alt: "Image 2", class: "rounded w-36"
          img src: "https://img.daisyui.com/images/stock/photo-1572635148818-ef6fd45eb394.webp", alt: "Image 3", class: "rounded w-36"
        end
      end
    end
  end
end
