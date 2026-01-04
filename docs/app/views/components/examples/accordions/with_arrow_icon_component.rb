# frozen_string_literal: true

module Examples
  module Accordions
    class WithArrowIconComponent < Base
      def title
        "Accordion with arrow icon"
      end

      def example
        Accordion :arrow, name: "my-accordion-2", checked: true do |accordion|
          accordion.title do
            "What payment methods do you accept?"
          end

          p do
            "We accept all major credit cards, PayPal, and bank transfers."
          end
        end

        Accordion :arrow, name: "my-accordion-2" do |accordion|
          accordion.title do
            "Is there a free trial available?"
          end

          p do
            "Yes, we offer a 14-day free trial with full access to all features."
          end
        end

        Accordion :arrow, name: "my-accordion-2" do |accordion|
          accordion.title do
            "Can I cancel my subscription anytime?"
          end

          p do
            "Absolutely! You can cancel your subscription at any time with no penalties."
          end
        end
      end
    end
  end
end
