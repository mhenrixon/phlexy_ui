# frozen_string_literal: true

module Examples
  module Toggles
    class DisabledComponent < Base
      def title
        "Disabled toggle"
      end

      def example
        Toggle disabled: true
        Toggle disabled: true, checked: true
      end
    end
  end
end
