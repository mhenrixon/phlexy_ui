module Examples
  module Timelines
    class VerticalComponent < Base
      def title
        "Vertical timeline"
      end

      def example
        Timeline :vertical do
          li do
            Timeline.new.start do
              "1984"
            end
            Timeline.new.middle
            Timeline.new.end class: "timeline-box" do
              "First Macintosh computer"
            end
            hr
          end

          li do
            hr
            Timeline.new.start do
              "1998"
            end
            Timeline.new.middle
            Timeline.new.end class: "timeline-box" do
              "iMac"
            end
            hr
          end

          li do
            hr
            Timeline.new.start do
              "2001"
            end
            Timeline.new.middle
            Timeline.new.end class: "timeline-box" do
              "iPod"
            end
            hr
          end

          li do
            hr
            Timeline.new.start do
              "2007"
            end
            Timeline.new.middle
            Timeline.new.end class: "timeline-box" do
              "iPhone"
            end
            hr
          end

          li do
            hr
            Timeline.new.start do
              "2015"
            end
            Timeline.new.middle
            Timeline.new.end class: "timeline-box" do
              "Apple Watch"
            end
          end
        end
      end
    end
  end
end
