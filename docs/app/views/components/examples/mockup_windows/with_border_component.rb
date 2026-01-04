# frozen_string_literal: true

module Examples
  module MockupWindows
    class WithBorderComponent < Base
      def title
        "Mockup window with border"
      end

      def example
        MockupWindow class: "border border-base-300" do
          div class: "flex justify-center px-4 py-16 border-t border-base-300" do
            "Hello!"
          end
        end
      end
    end
  end
end
