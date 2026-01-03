module Examples
  module Heroes
    class BasicComponent < Base
      def title
        "Hero"
      end

      def example
        Hero class: "bg-base-200 min-h-96" do |hero|
          hero.content class: "text-center" do
            div class: "max-w-md" do
              h1(class: "text-5xl font-bold") { "Hello there" }
              p(class: "py-6") { "Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda excepturi exercitationem quasi." }
              Button(:primary) { "Get Started" }
            end
          end
        end
      end
    end
  end
end
