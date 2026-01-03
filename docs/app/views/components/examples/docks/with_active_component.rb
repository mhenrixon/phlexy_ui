module Examples
  module Docks
    class WithActiveComponent < Base
      def title
        "Dock with active item"
      end

      def example
        div class: "relative w-full h-48 bg-base-200 rounded-lg" do
          Dock class: "absolute bottom-0 left-0 right-0" do
            button { "Home" }
            button class: "dock-active" do
              "Active"
            end
            button { "Settings" }
          end
        end
      end
    end
  end
end
