module Examples
  module Selects
    class SizesComponent < Base
      def title
        "Select sizes"
      end

      def example
        div class: "flex flex-col gap-4 w-full" do
          Select :xs do
            option(disabled: true, selected: true) { "Extra small" }
            option { "Option 1" }
            option { "Option 2" }
          end

          Select :sm do
            option(disabled: true, selected: true) { "Small" }
            option { "Option 1" }
            option { "Option 2" }
          end

          Select :md do
            option(disabled: true, selected: true) { "Medium" }
            option { "Option 1" }
            option { "Option 2" }
          end

          Select :lg do
            option(disabled: true, selected: true) { "Large" }
            option { "Option 1" }
            option { "Option 2" }
          end

          Select :xl do
            option(disabled: true, selected: true) { "Extra large" }
            option { "Option 1" }
            option { "Option 2" }
          end
        end
      end
    end
  end
end
