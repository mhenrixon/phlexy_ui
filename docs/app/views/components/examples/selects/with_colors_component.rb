module Examples
  module Selects
    class WithColorsComponent < Base
      def title
        "Select with colors"
      end

      def example
        div class: "flex flex-col gap-4 w-full" do
          Select :primary do
            option(disabled: true, selected: true) { "Primary" }
            option { "Option 1" }
            option { "Option 2" }
          end

          Select :secondary do
            option(disabled: true, selected: true) { "Secondary" }
            option { "Option 1" }
            option { "Option 2" }
          end

          Select :accent do
            option(disabled: true, selected: true) { "Accent" }
            option { "Option 1" }
            option { "Option 2" }
          end

          Select :success do
            option(disabled: true, selected: true) { "Success" }
            option { "Option 1" }
            option { "Option 2" }
          end

          Select :warning do
            option(disabled: true, selected: true) { "Warning" }
            option { "Option 1" }
            option { "Option 2" }
          end

          Select :info do
            option(disabled: true, selected: true) { "Info" }
            option { "Option 1" }
            option { "Option 2" }
          end

          Select :error do
            option(disabled: true, selected: true) { "Error" }
            option { "Option 1" }
            option { "Option 2" }
          end
        end
      end
    end
  end
end
