# frozen_string_literal: true

module Examples
  module FileInputs
    class WithLabelComponent < Base
      def title
        "File input with label"
      end

      def example
        div class: "form-control w-full max-w-xs" do
          label class: "label" do
            span class: "label-text" do
              "Pick a file"
            end
            span class: "label-text-alt" do
              "Alt label"
            end
          end
          FileInput :primary, class: "w-full max-w-xs"
          label class: "label" do
            span class: "label-text-alt" do
              "Max 2MB"
            end
          end
        end
      end
    end
  end
end
