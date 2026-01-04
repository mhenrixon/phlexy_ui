# frozen_string_literal: true

module Examples
  module MockupPhones
    class BasicComponent < Base
      def title
        "Mockup phone"
      end

      def example
        MockupPhone do |phone|
          phone.camera
          phone.display do
            div class: "flex items-center justify-center h-full bg-base-200" do
              "Hello!"
            end
          end
        end
      end
    end
  end
end
