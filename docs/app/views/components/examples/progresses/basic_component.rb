module Examples
  module Progresses
    class BasicComponent < Base
      def title
        "Progress"
      end

      def example
        Progress value: "0", max: "100", class: "w-56"
        Progress value: "10", max: "100", class: "w-56"
        Progress value: "40", max: "100", class: "w-56"
        Progress value: "70", max: "100", class: "w-56"
        Progress value: "100", max: "100", class: "w-56"
      end
    end
  end
end
