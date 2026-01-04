# frozen_string_literal: true

module Examples
  module Radios
    class WithLabelComponent < Base
      def title
        "Radio with label"
      end

      def example
        div class: "form-control" do
          label class: "label cursor-pointer gap-4" do
            span class: "label-text" do
              "Red pill"
            end
            Radio :error, name: "radio-label", checked: true
          end
        end

        div class: "form-control" do
          label class: "label cursor-pointer gap-4" do
            span class: "label-text" do
              "Blue pill"
            end
            Radio :info, name: "radio-label"
          end
        end
      end
    end
  end
end
