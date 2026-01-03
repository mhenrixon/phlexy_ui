module Examples
  module Footers
    class CenteredComponent < Base
      def title
        "Centered footer"
      end

      def example
        Footer :center, class: "bg-base-300 text-base-content p-4" do
          aside do
            p { "Copyright © 2024 - All rights reserved" }
          end
        end
      end
    end
  end
end
