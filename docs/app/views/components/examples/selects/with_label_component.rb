# frozen_string_literal: true

module Examples
  module Selects
    class WithLabelComponent < Base
      def title
        "Select with label"
      end

      def example
        div class: "form-control w-full" do
          label class: "label" do
            span class: "label-text" do
              "Pick the best fantasy franchise"
            end
          end
          Select do
            option(disabled: true, selected: true) { "Pick one" }
            option { "Star Wars" }
            option { "Harry Potter" }
            option { "Lord of the Rings" }
          end
          label class: "label" do
            span class: "label-text-alt" do
              "Alt label"
            end
          end
        end
      end
    end
  end
end
