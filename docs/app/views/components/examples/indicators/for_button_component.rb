module Examples
  module Indicators
    class ForButtonComponent < Base
      def title
        "Indicator for button"
      end

      def example
        Indicator do |indicator|
          indicator.item class: "badge badge-secondary" do
            "99+"
          end
          Button(:primary) { "Inbox" }
        end
      end
    end
  end
end
