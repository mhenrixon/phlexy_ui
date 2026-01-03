# frozen_string_literal: true

module Examples
  module Masks
    class BasicComponent < Base
      def title
        "Mask"
      end

      def example
        Mask :squircle, as: :img, src: "https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp", alt: "Squircle mask", class: "w-24"
      end
    end
  end
end
