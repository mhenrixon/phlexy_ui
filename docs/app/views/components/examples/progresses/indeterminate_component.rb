# frozen_string_literal: true

module Examples
  module Progresses
    class IndeterminateComponent < Base
      def title
        "Indeterminate (without value)"
      end

      def example
        Progress class: "w-56"
        Progress :primary, class: "w-56"
        Progress :secondary, class: "w-56"
        Progress :accent, class: "w-56"
      end
    end
  end
end
