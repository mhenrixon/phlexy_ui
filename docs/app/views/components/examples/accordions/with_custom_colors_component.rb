module Examples
  module Accordions
    class WithCustomColorsComponent < Base
      def title
        "Accordion with custom colors"
      end

      def example
        Accordion :arrow, name: "my-accordion-5", checked: true, class: "bg-primary text-primary-content" do |accordion|
          accordion.title class: "text-xl font-medium" do
            "Primary colored accordion"
          end

          p do
            "This accordion uses the primary color scheme."
          end
        end

        Accordion :arrow, name: "my-accordion-5", class: "bg-secondary text-secondary-content" do |accordion|
          accordion.title class: "text-xl font-medium" do
            "Secondary colored accordion"
          end

          p do
            "This accordion uses the secondary color scheme."
          end
        end

        Accordion :arrow, name: "my-accordion-5", class: "bg-accent text-accent-content" do |accordion|
          accordion.title class: "text-xl font-medium" do
            "Accent colored accordion"
          end

          p do
            "This accordion uses the accent color scheme."
          end
        end
      end
    end
  end
end
