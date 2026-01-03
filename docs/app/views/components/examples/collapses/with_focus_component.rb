# frozen_string_literal: true

module Examples
  module Collapses
    class WithFocusComponent < Base
      def title
        "Collapse with focus"
      end

      def subtitle
        "This collapse opens when focused and closes when blurred."
      end

      def example
        Collapse :arrow, class: "bg-base-200", tabindex: "0" do |collapse|
          collapse.title class: "text-xl font-medium" do
            "Focus me to open"
          end

          collapse.content do
            p do
              "This collapse responds to focus events. Click elsewhere to close it."
            end
          end
        end
      end
    end
  end
end
