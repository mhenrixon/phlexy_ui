# frozen_string_literal: true

module Examples
  module Selects
    class GhostComponent < Base
      def title
        "Ghost (no background)"
      end

      def example
        Select :ghost do
          option(disabled: true, selected: true) { "Pick your favorite Simpson" }
          option { "Homer" }
          option { "Marge" }
          option { "Bart" }
          option { "Lisa" }
          option { "Maggie" }
        end
      end
    end
  end
end
