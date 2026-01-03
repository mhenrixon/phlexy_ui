# frozen_string_literal: true

module Examples
  module Timelines
    class ResponsiveComponent < Base
      def title
        "Responsive"
      end

      def subtitle
        "Vertical by default, horizontal on large screens."
      end

      def example
        Timeline :vertical, class: "lg:timeline-horizontal" do |timeline|
          li do
            timeline.start class: "timeline-box" do
              "Step 1"
            end
            timeline.middle
            hr
          end

          li do
            hr
            timeline.middle
            timeline.end class: "timeline-box" do
              "Step 2"
            end
            hr
          end

          li do
            hr
            timeline.start class: "timeline-box" do
              "Step 3"
            end
            timeline.middle
            hr
          end

          li do
            hr
            timeline.middle
            timeline.end class: "timeline-box" do
              "Step 4"
            end
          end
        end
      end
    end
  end
end
