# frozen_string_literal: true

module Examples
  module Timelines
    class HorizontalComponent < Base
      def title
        "Horizontal timeline"
      end

      def example
        Timeline :horizontal do |timeline|
          li do
            timeline.start class: "timeline-box" do
              "1984"
            end
            timeline.middle
            hr
          end

          li do
            hr
            timeline.middle
            timeline.end class: "timeline-box" do
              "1998"
            end
            hr
          end

          li do
            hr
            timeline.start class: "timeline-box" do
              "2001"
            end
            timeline.middle
            hr
          end

          li do
            hr
            timeline.middle
            timeline.end class: "timeline-box" do
              "2007"
            end
            hr
          end

          li do
            hr
            timeline.start class: "timeline-box" do
              "2015"
            end
            timeline.middle
          end
        end
      end
    end
  end
end
