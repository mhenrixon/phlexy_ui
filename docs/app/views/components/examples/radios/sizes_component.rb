module Examples
  module Radios
    class SizesComponent < Base
      def title
        "Radio sizes"
      end

      def example
        Radio :xs, name: "radio-sizes-1", checked: true
        Radio :sm, name: "radio-sizes-2", checked: true
        Radio :md, name: "radio-sizes-3", checked: true
        Radio :lg, name: "radio-sizes-4", checked: true
        Radio :xl, name: "radio-sizes-5", checked: true
      end
    end
  end
end
