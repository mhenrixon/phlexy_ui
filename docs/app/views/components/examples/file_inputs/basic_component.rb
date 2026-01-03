# frozen_string_literal: true

module Examples
  module FileInputs
    class BasicComponent < Base
      def title
        "File input"
      end

      def example
        FileInput class: "w-full max-w-xs"
      end
    end
  end
end
