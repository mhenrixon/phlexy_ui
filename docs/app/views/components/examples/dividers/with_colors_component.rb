module Examples
  module Dividers
    class WithColorsComponent < Base
      def title
        "Divider with colors"
      end

      def example
        div class: "flex w-full flex-col gap-4" do
          Divider :neutral do
            "Neutral"
          end

          Divider :primary do
            "Primary"
          end

          Divider :secondary do
            "Secondary"
          end

          Divider :accent do
            "Accent"
          end

          Divider :success do
            "Success"
          end

          Divider :warning do
            "Warning"
          end

          Divider :info do
            "Info"
          end

          Divider :error do
            "Error"
          end
        end
      end
    end
  end
end
