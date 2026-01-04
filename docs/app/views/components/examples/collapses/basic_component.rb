# frozen_string_literal: true

module Examples
  module Collapses
    class BasicComponent < Base
      def title
        "Collapse"
      end

      def example
        Collapse tabindex: 0, class: "bg-base-200" do |collapse|
          collapse.title class: "text-xl font-medium" do
            "Click me to show/hide content"
          end

          collapse.content do
            p do
              "This is the content that can be shown or hidden by clicking the title."
            end
          end
        end
      end
    end
  end
end
