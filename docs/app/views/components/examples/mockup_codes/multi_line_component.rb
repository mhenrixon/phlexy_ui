# frozen_string_literal: true

module Examples
  module MockupCodes
    class MultiLineComponent < Base
      def title
        "Multi-line code"
      end

      def example
        MockupCode do
          pre(data: { prefix: "1" }) { code { "npm i daisyui" } }
          pre(data: { prefix: "2" }) { code { "installing..." } }
          pre(data: { prefix: "3" }, class: "bg-warning text-warning-content") { code { "Error!" } }
        end
      end
    end
  end
end
