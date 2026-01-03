module Examples
  module Validators
    class WithInputComponent < Base
      def title
        "Validator with password input"
      end

      def example
        Validator do |validator|
          Input type: "password", required: true, minlength: 8, placeholder: "Enter password"
          validator.hint { "Password must be at least 8 characters" }
        end
      end
    end
  end
end
