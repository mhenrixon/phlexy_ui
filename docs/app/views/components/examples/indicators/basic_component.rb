module Examples
  module Indicators
    class BasicComponent < Base
      def title
        "Indicator"
      end

      def example
        Indicator do |indicator|
          indicator.item class: "badge badge-secondary"
          div class: "bg-base-300 grid h-32 w-32 place-items-center" do
            "Content"
          end
        end
      end
    end
  end
end
