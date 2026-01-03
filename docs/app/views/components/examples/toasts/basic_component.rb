# frozen_string_literal: true

module Examples
  module Toasts
    class BasicComponent < Base
      def title
        "Toast (bottom end - default)"
      end

      def subtitle
        "Toast is positioned relative to its container. For fixed positioning, add position: fixed."
      end

      def example
        div class: "relative h-32 w-full" do
          Toast do
            Alert :info do
              span do
                "New message arrived."
              end
            end
          end
        end
      end
    end
  end
end
