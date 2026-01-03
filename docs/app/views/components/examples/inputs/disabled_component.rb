module Examples
  module Inputs
    class DisabledComponent < Base
      def title
        "Disabled input"
      end

      def example
        Input type: "text", placeholder: "You cannot type here", class: "w-full max-w-xs", disabled: true
      end
    end
  end
end
