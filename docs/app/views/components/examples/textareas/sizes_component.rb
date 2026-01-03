module Examples
  module Textareas
    class SizesComponent < Base
      def title
        "Textarea sizes"
      end

      def example
        div class: "flex flex-col gap-4 w-full" do
          Textarea :xs, placeholder: "Extra small"
          Textarea :sm, placeholder: "Small"
          Textarea :md, placeholder: "Medium"
          Textarea :lg, placeholder: "Large"
          Textarea :xl, placeholder: "Extra large"
        end
      end
    end
  end
end
