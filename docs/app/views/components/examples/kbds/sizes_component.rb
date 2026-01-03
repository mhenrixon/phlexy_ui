module Examples
  module Kbds
    class SizesComponent < Base
      def title
        "Sizes"
      end

      def example
        Kbd :xs do
          "xs"
        end

        Kbd :sm do
          "sm"
        end

        Kbd :md do
          "md"
        end

        Kbd :lg do
          "lg"
        end

        Kbd :xl do
          "xl"
        end
      end
    end
  end
end
