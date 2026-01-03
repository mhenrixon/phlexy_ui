# frozen_string_literal: true

module Examples
  module FileInputs
    class WithColorsComponent < Base
      def title
        "File input with colors"
      end

      def example
        div class: "flex flex-col gap-4 w-full" do
          FileInput :primary, class: "w-full max-w-xs"
          FileInput :secondary, class: "w-full max-w-xs"
          FileInput :accent, class: "w-full max-w-xs"
          FileInput :neutral, class: "w-full max-w-xs"
          FileInput :success, class: "w-full max-w-xs"
          FileInput :warning, class: "w-full max-w-xs"
          FileInput :info, class: "w-full max-w-xs"
          FileInput :error, class: "w-full max-w-xs"
        end
      end
    end
  end
end
