# frozen_string_literal: true

module Examples
  module Dividers
    class ResponsiveComponent < Base
      def title
        "Responsive"
      end

      def subtitle
        "Vertical by default, horizontal on large screens."
      end

      def example
        div class: "flex w-full flex-col lg:flex-row" do
          div class: "card bg-base-300 rounded-box grid h-32 flex-grow place-items-center" do
            "Content"
          end

          Divider class: "lg:divider-horizontal" do
            "OR"
          end

          div class: "card bg-base-300 rounded-box grid h-32 flex-grow place-items-center" do
            "Content"
          end
        end
      end
    end
  end
end
