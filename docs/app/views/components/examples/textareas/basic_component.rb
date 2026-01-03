module Examples
  module Textareas
    class BasicComponent < Base
      def title
        "Textarea"
      end

      def example
        Textarea placeholder: "Bio"
      end
    end
  end
end
