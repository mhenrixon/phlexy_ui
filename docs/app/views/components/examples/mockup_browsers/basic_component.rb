# frozen_string_literal: true

module Examples
  module MockupBrowsers
    class BasicComponent < Base
      def title
        "Mockup browser"
      end

      def example
        MockupBrowser class: "bg-base-300" do |browser|
          browser.toolbar do
            div class: "input" do
              "https://daisyui.com"
            end
          end
          div class: "bg-base-200 flex justify-center px-4 py-16" do
            "Hello!"
          end
        end
      end
    end
  end
end
