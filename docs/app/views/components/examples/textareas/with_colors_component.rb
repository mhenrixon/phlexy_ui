module Examples
  module Textareas
    class WithColorsComponent < Base
      def title
        "Textarea with colors"
      end

      def example
        div class: "flex flex-col gap-4 w-full" do
          Textarea :primary, placeholder: "Primary"
          Textarea :secondary, placeholder: "Secondary"
          Textarea :accent, placeholder: "Accent"
          Textarea :neutral, placeholder: "Neutral"
          Textarea :success, placeholder: "Success"
          Textarea :warning, placeholder: "Warning"
          Textarea :info, placeholder: "Info"
          Textarea :error, placeholder: "Error"
        end
      end
    end
  end
end
