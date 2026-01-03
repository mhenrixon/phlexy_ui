module Examples
  module Kbds
    class BasicComponent < Base
      def title
        "Kbd"
      end

      def example
        Kbd do
          "A"
        end
      end
    end
  end
end
