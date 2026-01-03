module Examples
  module Accordions
    class BasicComponent < Base
      def title
        "Accordion"
      end

      def example
        Accordion name: "my-accordion-1", checked: true do |accordion|
          accordion.title do
            "How do I create an account?"
          end

          p do
            "Click the \"Sign Up\" button in the top right corner and follow the registration process."
          end
        end

        Accordion name: "my-accordion-1" do |accordion|
          accordion.title do
            "I forgot my password. What should I do?"
          end

          p do
            "Click \"Forgot Password\" on the login page and follow the instructions sent to your email."
          end
        end

        Accordion name: "my-accordion-1" do |accordion|
          accordion.title do
            "How do I update my profile information?"
          end

          p do
            "Go to Settings > Profile and update your information there."
          end
        end
      end
    end
  end
end
