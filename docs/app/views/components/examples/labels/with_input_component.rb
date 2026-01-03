# frozen_string_literal: true

module Examples
  module Labels
    class WithInputComponent < Base
      def title
        "Label with input modifier"
      end

      def example
        Label :input do |label|
          label.text { "Username" }
          Input type: "text", placeholder: "Enter username"
        end
      end
    end
  end
end
