module Examples
  module FileInputs
    class GhostComponent < Base
      def title
        "Ghost (no background)"
      end

      def example
        FileInput :ghost, class: "w-full max-w-xs"
      end
    end
  end
end
