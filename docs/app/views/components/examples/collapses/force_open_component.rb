module Examples
  module Collapses
    class ForceOpenComponent < Base
      def title
        "Force open"
      end

      def example
        Collapse :open, :arrow, class: "bg-base-200" do |collapse|
          collapse.title class: "text-xl font-medium" do
            "I'm forced to stay open"
          end

          collapse.content do
            p do
              "This collapse is always open and cannot be closed."
            end
          end
        end
      end
    end
  end
end
