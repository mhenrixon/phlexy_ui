module Examples
  module Heroes
    class WithFigureComponent < Base
      def title
        "Hero with figure"
      end

      def example
        Hero class: "bg-base-200 min-h-96" do |hero|
          hero.content class: "flex-col lg:flex-row" do
            img src: "https://img.daisyui.com/images/stock/photo-1635805737707-575885ab0820.webp", class: "max-w-sm rounded-lg shadow-2xl"
            div do
              h1(class: "text-5xl font-bold") { "Box Office News!" }
              p(class: "py-6") { "Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda excepturi exercitationem quasi." }
              Button(:primary) { "Get Started" }
            end
          end
        end
      end
    end
  end
end
