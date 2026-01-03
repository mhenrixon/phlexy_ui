# frozen_string_literal: true

module Examples
  module Accordions
    class WithPlusMinusIconComponent < Base
      def title
        "Accordion with plus/minus icon"
      end

      def example
        Accordion :plus, name: "my-accordion-3", checked: true do |accordion|
          accordion.title do
            "How long does shipping take?"
          end

          p do
            "Standard shipping takes 5-7 business days. Express shipping is available for 2-3 day delivery."
          end
        end

        Accordion :plus, name: "my-accordion-3" do |accordion|
          accordion.title do
            "Do you ship internationally?"
          end

          p do
            "Yes, we ship to over 50 countries worldwide."
          end
        end

        Accordion :plus, name: "my-accordion-3" do |accordion|
          accordion.title do
            "What is your return policy?"
          end

          p do
            "We offer a 30-day return policy for unused items in original packaging."
          end
        end
      end
    end
  end
end
