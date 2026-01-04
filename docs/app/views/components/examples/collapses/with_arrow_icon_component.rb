# frozen_string_literal: true

module Examples
  module Collapses
    class WithArrowIconComponent < Base
      def title
        "With arrow icon"
      end

      def example
        Collapse :arrow, tabindex: 0, class: "bg-base-200" do |collapse|
          collapse.title class: "text-xl font-medium" do
            "Click to open this with arrow indicator"
          end

          collapse.content do
            p do
              "The arrow rotates when the collapse is opened or closed."
            end
          end
        end
      end
    end
  end
end
