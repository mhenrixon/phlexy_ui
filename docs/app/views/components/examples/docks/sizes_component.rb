module Examples
  module Docks
    class SizesComponent < Base
      def title
        "Dock sizes"
      end

      def example
        div class: "flex flex-col gap-8" do
          div class: "relative w-full h-32 bg-base-200 rounded-lg" do
            Dock :xs, class: "absolute bottom-0 left-0 right-0" do
              button { "XS" }
              button { "Size" }
              button { "Dock" }
            end
          end

          div class: "relative w-full h-32 bg-base-200 rounded-lg" do
            Dock :sm, class: "absolute bottom-0 left-0 right-0" do
              button { "SM" }
              button { "Size" }
              button { "Dock" }
            end
          end

          div class: "relative w-full h-32 bg-base-200 rounded-lg" do
            Dock :md, class: "absolute bottom-0 left-0 right-0" do
              button { "MD" }
              button { "Size" }
              button { "Dock" }
            end
          end

          div class: "relative w-full h-36 bg-base-200 rounded-lg" do
            Dock :lg, class: "absolute bottom-0 left-0 right-0" do
              button { "LG" }
              button { "Size" }
              button { "Dock" }
            end
          end
        end
      end
    end
  end
end
