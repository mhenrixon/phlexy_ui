# frozen_string_literal: true

module Examples
  module Drawers
    class ResponsiveComponent < Base
      def title
        "Responsive (always open on desktop)"
      end

      def example
        Drawer "lg:drawer-open": true, id: "my-drawer-responsive" do |drawer|
          drawer.toggle
          drawer.content class: "flex flex-col items-center justify-center" do
            p(class: "mb-4") { "Content goes here" }
            drawer.button(:primary, class: "lg:hidden") { "Open drawer" }
          end
          drawer.side do
            drawer.overlay aria_label: "close sidebar", class: "lg:hidden"
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
