module Examples
  module Inputs
    class BasicComponent < Base
      def title
        "Input"
      end

      def example
        Input type: "text", placeholder: "Type here", class: "w-full max-w-xs"
      end
    end
  end
end
