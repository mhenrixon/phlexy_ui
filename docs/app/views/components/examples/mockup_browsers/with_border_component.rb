# frozen_string_literal: true

module Examples
  module MockupBrowsers
    class WithBorderComponent < Base
      def title
        "Mockup browser with border"
      end

      def example
        MockupBrowser class: "border border-base-300" do |browser|
          browser.toolbar do
            div class: "input" do
              "https://daisyui.com"
            end
          end
          div class: "flex justify-center px-4 py-16 border-t border-base-300" do
            "Hello!"
          end
        end
      end
    end
  end
end
