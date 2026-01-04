# frozen_string_literal: true

module Examples
  module Kbds
    class FunctionKeysComponent < Base
      def title
        "Function keys"
      end

      def example
        div class: "flex flex-wrap gap-1" do
          Kbd do
            "⌘"
          end
          Kbd do
            "⌥"
          end
          Kbd do
            "⇧"
          end
          Kbd do
            "⌃"
          end
        end
      end
    end
  end
end
