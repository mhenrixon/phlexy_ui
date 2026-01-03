module Examples
  module ThemeControllers
    class WithDropdownComponent < Base
      def title
        "Theme controller with dropdown"
      end

      def example
        Dropdown do |dropdown|
          dropdown.button(:ghost, :sm) { "Theme" }
          dropdown.content class: "bg-base-300 rounded-box w-52 p-2" do
            ul class: "menu menu-sm" do
              li do
                ThemeController theme_value: "light", name: "theme-dropdown", class: "btn btn-sm btn-block btn-ghost justify-start", aria_label: "Light"
              end
              li do
                ThemeController theme_value: "dark", name: "theme-dropdown", class: "btn btn-sm btn-block btn-ghost justify-start", aria_label: "Dark"
              end
              li do
                ThemeController theme_value: "cupcake", name: "theme-dropdown", class: "btn btn-sm btn-block btn-ghost justify-start", aria_label: "Cupcake"
              end
            end
          end
        end
      end
    end
  end
end
