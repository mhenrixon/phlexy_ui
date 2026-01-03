module Examples
  module Indicators
    class PositionsComponent < Base
      def title
        "Indicator positions"
      end

      def example
        div class: "grid grid-cols-3 gap-4" do
          Indicator do |indicator|
            indicator.item :start, :top, class: "badge badge-primary" do
              "top-start"
            end
            div(class: "bg-base-300 grid h-20 w-32 place-items-center") { "Content" }
          end

          Indicator do |indicator|
            indicator.item :center, :top, class: "badge badge-primary" do
              "top-center"
            end
            div(class: "bg-base-300 grid h-20 w-32 place-items-center") { "Content" }
          end

          Indicator do |indicator|
            indicator.item :end, :top, class: "badge badge-primary" do
              "top-end"
            end
            div(class: "bg-base-300 grid h-20 w-32 place-items-center") { "Content" }
          end

          Indicator do |indicator|
            indicator.item :start, :middle, class: "badge badge-secondary" do
              "middle-start"
            end
            div(class: "bg-base-300 grid h-20 w-32 place-items-center") { "Content" }
          end

          Indicator do |indicator|
            indicator.item :center, :middle, class: "badge badge-secondary" do
              "middle-center"
            end
            div(class: "bg-base-300 grid h-20 w-32 place-items-center") { "Content" }
          end

          Indicator do |indicator|
            indicator.item :end, :middle, class: "badge badge-secondary" do
              "middle-end"
            end
            div(class: "bg-base-300 grid h-20 w-32 place-items-center") { "Content" }
          end

          Indicator do |indicator|
            indicator.item :start, :bottom, class: "badge badge-accent" do
              "bottom-start"
            end
            div(class: "bg-base-300 grid h-20 w-32 place-items-center") { "Content" }
          end

          Indicator do |indicator|
            indicator.item :center, :bottom, class: "badge badge-accent" do
              "bottom-center"
            end
            div(class: "bg-base-300 grid h-20 w-32 place-items-center") { "Content" }
          end

          Indicator do |indicator|
            indicator.item :end, :bottom, class: "badge badge-accent" do
              "bottom-end"
            end
            div(class: "bg-base-300 grid h-20 w-32 place-items-center") { "Content" }
          end
        end
      end
    end
  end
end
