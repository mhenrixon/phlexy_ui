module Examples
  module Accordions
    class WithJoinComponent < Base
      def title
        "Accordion with join (grouped)"
      end

      def example
        Join :vertical, class: "w-full" do
          Accordion :arrow, name: "my-accordion-4", checked: true, class: "join-item border-base-300 border" do |accordion|
            accordion.title do
              "What are your business hours?"
            end

            p do
              "We're open Monday to Friday, 9am to 5pm EST."
            end
          end

          Accordion :arrow, name: "my-accordion-4", class: "join-item border-base-300 border" do |accordion|
            accordion.title do
              "How can I contact support?"
            end

            p do
              "You can reach us via email at support@example.com or through our live chat."
            end
          end

          Accordion :arrow, name: "my-accordion-4", class: "join-item border-base-300 border" do |accordion|
            accordion.title do
              "Where are you located?"
            end

            p do
              "Our headquarters is in San Francisco, CA, with offices in New York and London."
            end
          end
        end
      end
    end
  end
end
