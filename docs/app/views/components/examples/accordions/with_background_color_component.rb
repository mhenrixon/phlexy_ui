# frozen_string_literal: true

module Examples
  module Accordions
    class WithBackgroundColorComponent < Base
      def title
        "Accordion with background color"
      end

      def example
        Accordion :arrow, name: "my-accordion-6", checked: true, class: "bg-base-200" do |accordion|
          accordion.title do
            "How secure is my data?"
          end

          p do
            "We use industry-standard encryption and security practices to protect your data."
          end
        end

        Accordion :arrow, name: "my-accordion-6", class: "bg-base-200" do |accordion|
          accordion.title do
            "Can I export my data?"
          end

          p do
            "Yes, you can export all your data at any time from the settings page."
          end
        end
      end
    end
  end
end
