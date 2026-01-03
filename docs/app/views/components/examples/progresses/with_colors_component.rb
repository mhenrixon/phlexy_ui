module Examples
  module Progresses
    class WithColorsComponent < Base
      def title
        "Progress with colors"
      end

      def example
        Progress :primary, value: "40", max: "100", class: "w-56"
        Progress :secondary, value: "40", max: "100", class: "w-56"
        Progress :accent, value: "40", max: "100", class: "w-56"
        Progress :neutral, value: "40", max: "100", class: "w-56"
        Progress :info, value: "40", max: "100", class: "w-56"
        Progress :success, value: "40", max: "100", class: "w-56"
        Progress :warning, value: "40", max: "100", class: "w-56"
        Progress :error, value: "40", max: "100", class: "w-56"
      end
    end
  end
end
