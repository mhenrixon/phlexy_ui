module Examples
  module Footers
    class HorizontalComponent < Base
      def title
        "Horizontal footer"
      end

      def example
        Footer :horizontal, :center, class: "bg-base-200 text-base-content p-4" do
          aside class: "grid-flow-col items-center" do
            p { "ACME Industries Ltd." }
            p { "Providing reliable tech since 1992" }
          end
          nav class: "grid-flow-col gap-4 md:place-self-center md:justify-self-end" do
            a(class: "link link-hover") { "About us" }
            a(class: "link link-hover") { "Contact" }
          end
        end
      end
    end
  end
end
