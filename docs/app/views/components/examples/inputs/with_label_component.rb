# frozen_string_literal: true

module Examples
  module Inputs
    class WithLabelComponent < Base
      def title
        "Input with label"
      end

      def example
        div class: "form-control w-full max-w-xs" do
          label class: "label" do
            span class: "label-text" do
              "What is your name?"
            end
            span class: "label-text-alt" do
              "Alt label"
            end
          end
          Input :primary, type: "text", placeholder: "Type here", class: "w-full max-w-xs"
          label class: "label" do
            span class: "label-text-alt" do
              "Bottom left"
            end
            span class: "label-text-alt" do
              "Bottom right"
            end
          end
        end
      end
    end
  end
end
