# frozen_string_literal: true

module Examples
  module Toggles
    class BasicComponent < Base
      def title
        "Toggle"
      end

      def example
        Toggle checked: true
      end
    end
  end
end
