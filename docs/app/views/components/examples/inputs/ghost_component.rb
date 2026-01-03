# frozen_string_literal: true

module Examples
  module Inputs
    class GhostComponent < Base
      def title
        "Ghost (no background)"
      end

      def example
        Input :ghost, type: "text", placeholder: "Ghost input", class: "w-full max-w-xs"
      end
    end
  end
end
