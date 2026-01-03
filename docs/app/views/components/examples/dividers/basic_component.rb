# frozen_string_literal: true

module Examples
  module Dividers
    class BasicComponent < Base
      def title
        "Divider"
      end

      def example
        div class: "flex w-full flex-col" do
          div class: "card bg-base-300 rounded-box grid h-20 place-items-center" do
            "Content"
          end

          div class: "card bg-base-300 rounded-box grid h-20 place-items-center" do
            "Content"
          end
        end
      end
    end
  end
end
