# frozen_string_literal: true

module Examples
  module Labels
    class BasicComponent < Base
      def title
        "Label"
      end

      def example
        Label do |label|
          label.text { "Email" }
          Input type: "email", placeholder: "Enter your email"
        end
      end
    end
  end
end
