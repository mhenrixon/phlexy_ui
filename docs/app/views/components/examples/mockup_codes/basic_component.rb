# frozen_string_literal: true

module Examples
  module MockupCodes
    class BasicComponent < Base
      def title
        "Mockup code"
      end

      def example
        MockupCode do
          pre(data: { prefix: "$" }) { code { "npm i daisyui" } }
        end
      end
    end
  end
end
