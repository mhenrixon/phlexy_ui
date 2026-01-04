# frozen_string_literal: true

module Examples
  module Textareas
    class GhostComponent < Base
      def title
        "Ghost (no background)"
      end

      def example
        Textarea :ghost, placeholder: "Ghost textarea"
      end
    end
  end
end
