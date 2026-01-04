# frozen_string_literal: true

module Examples
  module FormControls
    class BasicComponent < Base
      def title
        "Form control"
      end

      def example
        FormControl do
          Input type: "text", placeholder: "Enter text"
        end
      end
    end
  end
end
