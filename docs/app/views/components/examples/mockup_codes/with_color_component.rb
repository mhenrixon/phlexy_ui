# frozen_string_literal: true

module Examples
  module MockupCodes
    class WithColorComponent < Base
      def title
        "With background color"
      end

      def example
        MockupCode class: "bg-primary text-primary-content" do
          pre(data: { prefix: "~" }) { code { "Customized" } }
        end
      end
    end
  end
end
