module Examples
  module Textareas
    class WithLabelComponent < Base
      def title
        "Textarea with label"
      end

      def example
        div class: "form-control w-full" do
          label class: "label" do
            span class: "label-text" do
              "Your bio"
            end
            span class: "label-text-alt" do
              "Alt label"
            end
          end
          Textarea :primary, placeholder: "Bio"
          label class: "label" do
            span class: "label-text-alt" do
              "Your bio can be up to 400 characters"
            end
            span class: "label-text-alt" do
              "0/400"
            end
          end
        end
      end
    end
  end
end
