# frozen_string_literal: true

module Examples
  module Labels
    class FloatingComponent < Base
      def title
        "Floating label"
      end

      def example
        Label :floating do |label|
          label.text { "Email" }
          Input type: "email", placeholder: " "
        end
      end
    end
  end
end
