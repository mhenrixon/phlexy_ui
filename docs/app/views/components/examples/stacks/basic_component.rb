module Examples
  module Stacks
    class BasicComponent < Base
      def title
        "Stack"
      end

      def example
        Stack do
          div(class: "bg-primary text-primary-content grid h-20 w-32 place-content-center rounded") { "1" }
          div(class: "bg-secondary text-secondary-content grid h-20 w-32 place-content-center rounded") { "2" }
          div(class: "bg-accent text-accent-content grid h-20 w-32 place-content-center rounded") { "3" }
        end
      end
    end
  end
end
