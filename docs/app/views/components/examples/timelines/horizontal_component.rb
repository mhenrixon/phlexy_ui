module Examples
  module Timelines
    class HorizontalComponent < Base
      def title
        "Horizontal timeline"
      end

      def example
        Timeline :horizontal do
          li do
            Timeline.new.start class: "timeline-box" do
              "1984"
            end
            Timeline.new.middle
            hr
          end

          li do
            hr
            Timeline.new.middle
            Timeline.new.end class: "timeline-box" do
              "1998"
            end
            hr
          end

          li do
            hr
            Timeline.new.start class: "timeline-box" do
              "2001"
            end
            Timeline.new.middle
            hr
          end

          li do
            hr
            Timeline.new.middle
            Timeline.new.end class: "timeline-box" do
              "2007"
            end
            hr
          end

          li do
            hr
            Timeline.new.start class: "timeline-box" do
              "2015"
            end
            Timeline.new.middle
          end
        end
      end
    end
  end
end
