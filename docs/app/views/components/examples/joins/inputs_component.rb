# frozen_string_literal: true

module Examples
  module Joins
    class InputsComponent < Base
      def title
        "Join with inputs"
      end

      def example
        Join do
          Input class: "join-item", placeholder: "Search..."
          Button(:primary, class: "join-item") { "Search" }
        end
      end
    end
  end
end
