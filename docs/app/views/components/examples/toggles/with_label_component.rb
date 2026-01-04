# frozen_string_literal: true

module Examples
  module Toggles
    class WithLabelComponent < Base
      def title
        "Toggle with label"
      end

      def example
        div class: "form-control w-52" do
          label class: "label cursor-pointer" do
            span class: "label-text" do
              "Remember me"
            end
            Toggle :primary
          end
        end

        div class: "form-control w-52" do
          label class: "label cursor-pointer" do
            span class: "label-text" do
              "Enable notifications"
            end
            Toggle :secondary, checked: true
          end
        end
      end
    end
  end
end
