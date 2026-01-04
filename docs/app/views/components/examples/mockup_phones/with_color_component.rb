# frozen_string_literal: true

module Examples
  module MockupPhones
    class WithColorComponent < Base
      def title
        "Mockup phone with color and wallpaper"
      end

      def example
        MockupPhone class: "border-primary" do |phone|
          phone.camera
          phone.display class: "bg-gradient-to-b from-primary to-secondary" do
            div class: "flex items-center justify-center h-full text-white" do
              "iPhone"
            end
          end
        end
      end
    end
  end
end
