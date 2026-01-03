module Examples
  module Textareas
    class DisabledComponent < Base
      def title
        "Disabled textarea"
      end

      def example
        Textarea placeholder: "You cannot type here", disabled: true
      end
    end
  end
end
