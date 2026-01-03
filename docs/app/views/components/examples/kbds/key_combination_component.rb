# frozen_string_literal: true

module Examples
  module Kbds
    class KeyCombinationComponent < Base
      def title
        "Key combination"
      end

      def example
        span class: "flex gap-1" do
          Kbd do
            "ctrl"
          end
          plain "+"
          Kbd do
            "shift"
          end
          plain "+"
          Kbd do
            "del"
          end
        end
      end
    end
  end
end
