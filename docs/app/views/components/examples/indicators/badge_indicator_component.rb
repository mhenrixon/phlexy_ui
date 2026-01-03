# frozen_string_literal: true

module Examples
  module Indicators
    class BadgeIndicatorComponent < Base
      def title
        "Badge as indicator"
      end

      def example
        Indicator do |indicator|
          indicator.item class: "badge badge-primary" do
            "New"
          end
          div class: "bg-base-300 grid h-32 w-32 place-items-center rounded-lg" do
            "Content"
          end
        end
      end
    end
  end
end
