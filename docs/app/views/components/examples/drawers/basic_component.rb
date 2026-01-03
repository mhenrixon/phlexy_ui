# frozen_string_literal: true

module Examples
  module Drawers
    class BasicComponent < Base
      def title
        "Drawer"
      end

      def example
        Drawer id: "my-drawer" do |drawer|
          drawer.toggle
          drawer.content do
            drawer.button(:primary) { "Open drawer" }
          end
          drawer.side do
            drawer.overlay aria_label: "close sidebar"
            ul class: "menu bg-base-200 text-base-content min-h-full w-80 p-4" do
              li { a { "Sidebar Item 1" } }
              li { a { "Sidebar Item 2" } }
            end
          end
        end
      end
    end
  end
end
