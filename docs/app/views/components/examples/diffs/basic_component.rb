module Examples
  module Diffs
    class BasicComponent < Base
      def title
        "Diff"
      end

      def subtitle
        "Diff shows a side-by-side comparison with an adjustable slider."
      end

      def example
        Diff class: "aspect-video" do |diff|
          diff.item_1 do
            img alt: "daisy", src: "https://img.daisyui.com/images/stock/photo-1560717789-0ac7c58ac90a.webp"
          end

          diff.item_2 do
            img alt: "daisy", src: "https://img.daisyui.com/images/stock/photo-1560717789-0ac7c58ac90a-blur.webp"
          end

          diff.resizer
        end
      end
    end
  end
end
