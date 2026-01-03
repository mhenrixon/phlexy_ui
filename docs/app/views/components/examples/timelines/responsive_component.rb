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
        Timeline :vertical, class: "lg:timeline-horizontal" do
          li do
            Timeline.new.start class: "timeline-box" do
              "Step 1"
            end
            Timeline.new.middle
            hr
          end

          li do
            hr
            Timeline.new.middle
            Timeline.new.end class: "timeline-box" do
              "Step 2"
            end
            hr
          end

          li do
            hr
            Timeline.new.start class: "timeline-box" do
              "Step 3"
            end
            Timeline.new.middle
            hr
          end

          li do
            hr
            Timeline.new.middle
            Timeline.new.end class: "timeline-box" do
              "Step 4"
            end
          end
        end
      end
    end
  end
end
