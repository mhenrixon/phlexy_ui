module Examples
  module Ranges
    class SizesComponent < Base
      def title
        "Range sizes"
      end

      def example
        div class: "flex flex-col gap-4 w-full" do
          Range :xs, min: 0, max: 100, value: 20
          Range :sm, min: 0, max: 100, value: 40
          Range :md, min: 0, max: 100, value: 60
          Range :lg, min: 0, max: 100, value: 80
          Range :xl, min: 0, max: 100, value: 100
        end
      end
    end
  end
end
