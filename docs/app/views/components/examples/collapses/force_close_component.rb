# frozen_string_literal: true

module Examples
  module Collapses
    class ForceCloseComponent < Base
      def title
        "Force close"
      end

      def example
        Collapse :close, :arrow, class: "bg-base-200" do |collapse|
          collapse.title class: "text-xl font-medium" do
            "I'm forced to stay closed"
          end

          collapse.content do
            p do
              "This collapse is always closed and cannot be opened."
            end
          end
        end
      end
    end
  end
end
