# frozen_string_literal: true

module Examples
  module Actions
    class BasicComponent < Base
      def title
        "Action"
      end

      def example
        Action do
          "Action"
        end
      end
    end
  end
end
