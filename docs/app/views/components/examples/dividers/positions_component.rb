# frozen_string_literal: true

module Examples
  module Dividers
    class PositionsComponent < Base
      def title
        "Divider positions"
      end

      def example
        div class: "flex w-full flex-col gap-4" do
          Divider :start do
            "Start"
          end

          Divider do
            "Center (default)"
          end

          Divider :end do
            "End"
          end
        end
      end
    end
  end
end
