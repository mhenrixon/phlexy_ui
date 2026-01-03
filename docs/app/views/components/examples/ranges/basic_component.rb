# frozen_string_literal: true

module Examples
  module Ranges
    class BasicComponent < Base
      def title
        "Range"
      end

      def example
        Range min: 0, max: 100, value: 40
      end
    end
  end
end
