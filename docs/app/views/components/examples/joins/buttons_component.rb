# frozen_string_literal: true

module Examples
  module Joins
    class ButtonsComponent < Base
      def title
        "Join with buttons"
      end

      def example
        Join do
          Button(:primary, class: "join-item") { "Primary" }
          Button(:secondary, class: "join-item") { "Secondary" }
          Button(:accent, class: "join-item") { "Accent" }
        end
      end
    end
  end
end
