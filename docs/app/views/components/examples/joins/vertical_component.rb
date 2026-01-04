# frozen_string_literal: true

module Examples
  module Joins
    class VerticalComponent < Base
      def title
        "Vertical join"
      end

      def example
        Join :vertical do |join|
          join.item { Button { "Action 1" } }
          join.item { Button { "Action 2" } }
          join.item { Button { "Action 3" } }
        end
      end
    end
  end
end
