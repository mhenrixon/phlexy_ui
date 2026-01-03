# frozen_string_literal: true

module Examples
  module Toggles
    class SizesComponent < Base
      def title
        "Toggle sizes"
      end

      def example
        Toggle :xs, checked: true
        Toggle :sm, checked: true
        Toggle :md, checked: true
        Toggle :lg, checked: true
        Toggle :xl, checked: true
      end
    end
  end
end
