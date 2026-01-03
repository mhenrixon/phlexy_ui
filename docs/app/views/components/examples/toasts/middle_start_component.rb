# frozen_string_literal: true

module Examples
  module Toasts
    class MiddleStartComponent < Base
      def title
        "Toast middle start"
      end

      def example
        div class: "relative h-32 w-full" do
          Toast :middle, :start do
            Alert :info do
              span do
                "Middle start position."
              end
            end
          end
        end
      end
    end
  end
end
