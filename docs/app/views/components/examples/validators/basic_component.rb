module Examples
  module Validators
    class BasicComponent < Base
      def title
        "Validator"
      end

      def example
        Validator do
          Input type: "email", required: true, placeholder: "Enter email"
        end
      end
    end
  end
end
