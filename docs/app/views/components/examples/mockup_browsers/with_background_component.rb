# frozen_string_literal: true

module Examples
  module MockupBrowsers
    class WithBackgroundComponent < Base
      def title
        "Mockup browser with background color"
      end

      def example
        MockupBrowser class: "bg-base-300" do |browser|
          browser.toolbar do
            div class: "input" do
              "https://daisyui.com"
            end
          end
          div class: "bg-primary flex justify-center px-4 py-16 text-primary-content" do
            "Hello!"
          end
        end
      end
    end
  end
end
