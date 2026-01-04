# frozen_string_literal: true

module Examples
  module MockupCodes
    class WithLinePrefixComponent < Base
      def title
        "With line prefix"
      end

      def example
        MockupCode do
          pre(data: { prefix: "1" }) { code { "npm i daisyui" } }
        end
      end
    end
  end
end
