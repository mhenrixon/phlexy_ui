module Examples
  module FileInputs
    class DisabledComponent < Base
      def title
        "Disabled file input"
      end

      def example
        FileInput class: "w-full max-w-xs", disabled: true
      end
    end
  end
end
