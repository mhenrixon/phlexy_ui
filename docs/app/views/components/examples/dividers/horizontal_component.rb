# frozen_string_literal: true

module Examples
  module Dividers
    class HorizontalComponent < Base
      def title
        "Horizontal divider"
      end

      def example
        div class: "flex w-full" do
          div class: "card bg-base-300 rounded-box grid h-32 flex-grow place-items-center" do
            "Content"
          end

          Divider :horizontal

          div class: "card bg-base-300 rounded-box grid h-32 flex-grow place-items-center" do
            "Content"
          end
        end
      end
    end
  end
end
