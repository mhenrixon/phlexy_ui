# frozen_string_literal: true

module Examples
  module Joins
    class BasicComponent < Base
      def title
        "Join"
      end

      def example
        Join do |join|
          join.item { Button { "Action 1" } }
          join.item { Button { "Action 2" } }
          join.item { Button { "Action 3" } }
        end
      end
    end
  end
end
