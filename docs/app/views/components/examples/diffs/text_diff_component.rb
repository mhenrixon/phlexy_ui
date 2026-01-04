# frozen_string_literal: true

module Examples
  module Diffs
    class TextDiffComponent < Base
      def title
        "Text diff"
      end

      def example
        Diff class: "bg-base-200 font-mono text-9xl" do |diff|
          diff.item_1 do
            div class: "bg-primary text-primary-content grid place-content-center p-4" do
              "DAISY"
            end
          end

          diff.item_2 do
            div class: "bg-base-200 grid place-content-center p-4" do
              "DAISY"
            end
          end

          diff.resizer
        end
      end
    end
  end
end
