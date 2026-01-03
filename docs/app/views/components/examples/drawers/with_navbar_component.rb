module Examples
  module Drawers
    class WithNavbarComponent < Base
      def title
        "Drawer with navbar"
      end

      def example
        Drawer id: "my-drawer-navbar" do |drawer|
          drawer.toggle
          drawer.content do
            Navbar class: "bg-base-300 w-full" do |navbar|
              navbar.start do
                drawer.button(:ghost, :square) do
                  svg xmlns: "http://www.w3.org/2000/svg", fill: "none", viewBox: "0 0 24 24", class: "inline-block h-5 w-5 stroke-current" do |s|
                    s.path stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M4 6h16M4 12h16M4 18h16"
                  end
                end
              end
              navbar.center do
                a(class: "text-xl font-bold") { "My App" }
              end
            end
            div class: "p-4" do
              p { "Page content here" }
            end
          end
          drawer.side do
            drawer.overlay aria_label: "close sidebar"
            ul class: "menu bg-base-200 text-base-content min-h-full w-80 p-4" do
              li { a { "Homepage" } }
              li { a { "Portfolio" } }
              li { a { "About" } }
              li { a { "Contact" } }
            end
          end
        end
      end
    end
  end
end
