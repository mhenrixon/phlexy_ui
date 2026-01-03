# frozen_string_literal: true

module Examples
  module Indicators
    class ForInputComponent < Base
      def title
        "Indicator for input"
      end

      def example
        Indicator class: "w-full max-w-xs" do |indicator|
          indicator.item class: "badge" do
            "Required"
          end
          Input type: "text", placeholder: "Your email", class: "w-full"
        end
      end
    end
  end
end
