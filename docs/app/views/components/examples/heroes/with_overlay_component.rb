module Examples
  module Heroes
    class WithOverlayComponent < Base
      def title
        "Hero with overlay image"
      end

      def example
        Hero class: "min-h-96", style: "background-image: url(https://img.daisyui.com/images/stock/photo-1507358522600-9f71e620c44e.webp);" do |hero|
          hero.overlay class: "bg-opacity-60"
          hero.content class: "text-center text-neutral-content" do
            div class: "max-w-md" do
              h1(class: "mb-5 text-5xl font-bold") { "Hello there" }
              p(class: "mb-5") { "Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda excepturi exercitationem quasi." }
              Button(:primary) { "Get Started" }
            end
          end
        end
      end
    end
  end
end
