# frozen_string_literal: true

module Examples
  module Drawers
    class EndPositionComponent < Base
      def title
        "Drawer from right side"
      end

      def example
        Drawer :end, id: "my-drawer-end" do |drawer|
          drawer.toggle
          drawer.content do
            drawer.button(:secondary) { "Open drawer (right)" }
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
