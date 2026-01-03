module Examples
  module Collapses
    class WithPlusMinusIconComponent < Base
      def title
        "With plus/minus icon"
      end

      def example
        Collapse :plus, tabindex: 0, class: "bg-base-200" do |collapse|
          collapse.title class: "text-xl font-medium" do
            "Click to open this with plus/minus indicator"
          end

          collapse.content do
            p do
              "The icon changes between plus and minus when toggled."
            end
          end
        end
      end
    end
  end
end
