# frozen_string_literal: true

module Examples
  module Kbds
    class ArrowKeysComponent < Base
      def title
        "Arrow keys"
      end

      def example
        div class: "flex justify-center gap-1 w-full" do
          div class: "flex flex-col gap-1" do
            div class: "flex justify-center" do
              Kbd do
                "▲"
              end
            end
            div class: "flex gap-1" do
              Kbd do
                "◀"
              end
              Kbd do
                "▼"
              end
              Kbd do
                "▶"
              end
            end
          end
        end
      end
    end
  end
end
