# frozen_string_literal: true

module Examples
  module FileInputs
    class SizesComponent < Base
      def title
        "File input sizes"
      end

      def example
        div class: "flex flex-col gap-4 w-full" do
          FileInput :xs, class: "w-full max-w-xs"
          FileInput :sm, class: "w-full max-w-xs"
          FileInput :md, class: "w-full max-w-xs"
          FileInput :lg, class: "w-full max-w-xs"
          FileInput :xl, class: "w-full max-w-xs"
        end
      end
    end
  end
end
