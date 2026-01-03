# frozen_string_literal: true

module Examples
  module Validators
    class WithHintComponent < Base
      def title
        "Validator with hint"
      end

      def example
        Validator do |validator|
          Input type: "email", required: true, placeholder: "Enter email"
          validator.hint { "Please enter a valid email address" }
        end
      end
    end
  end
end
