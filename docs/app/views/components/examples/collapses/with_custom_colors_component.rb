# frozen_string_literal: true

module Examples
  module Collapses
    class WithCustomColorsComponent < Base
      def title
        "With custom colors"
      end

      def example
        Collapse :arrow, tabindex: 0, class: "bg-primary text-primary-content" do |collapse|
          collapse.title class: "text-xl font-medium" do
            "Primary colored collapse"
          end

          collapse.content do
            p do
              "This uses the primary color theme."
            end
          end
        end

        Collapse :arrow, tabindex: 0, class: "bg-secondary text-secondary-content" do |collapse|
          collapse.title class: "text-xl font-medium" do
            "Secondary colored collapse"
          end

          collapse.content do
            p do
              "This uses the secondary color theme."
            end
          end
        end

        Collapse :arrow, tabindex: 0, class: "bg-accent text-accent-content" do |collapse|
          collapse.title class: "text-xl font-medium" do
            "Accent colored collapse"
          end

          collapse.content do
            p do
              "This uses the accent color theme."
            end
          end
        end
      end
    end
  end
end
