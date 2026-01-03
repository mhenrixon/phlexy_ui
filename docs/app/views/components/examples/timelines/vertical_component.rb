module Examples
  module Timelines
    class VerticalComponent < Base
      def title
        "Vertical timeline"
      end

      def example
        Timeline :vertical do |timeline|
          li do
            timeline.start do
              "1984"
            end
            timeline.middle
            timeline.end class: "timeline-box" do
              "First Macintosh computer"
            end
            hr
          end

          li do
            hr
            timeline.start do
              "1998"
            end
            timeline.middle
            timeline.end class: "timeline-box" do
              "iMac"
            end
            hr
          end

          li do
            hr
            timeline.start do
              "2001"
            end
            timeline.middle
            timeline.end class: "timeline-box" do
              "iPod"
            end
            hr
          end

          li do
            hr
            timeline.start do
              "2007"
            end
            timeline.middle
            timeline.end class: "timeline-box" do
              "iPhone"
            end
            hr
          end

          li do
            hr
            timeline.start do
              "2015"
            end
            timeline.middle
            timeline.end class: "timeline-box" do
              "Apple Watch"
            end
          end
        end
      end
    end
  end
end
