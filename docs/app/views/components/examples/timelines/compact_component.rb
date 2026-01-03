module Examples
  module Timelines
    class CompactComponent < Base
      def title
        "Compact timeline"
      end

      def example
        Timeline :compact, :vertical do |timeline|
          li do
            timeline.middle
            timeline.end class: "timeline-box" do
              "2020"
            end
            hr
          end

          li do
            hr
            timeline.middle
            timeline.end class: "timeline-box" do
              "2021"
            end
            hr
          end

          li do
            hr
            timeline.middle
            timeline.end class: "timeline-box" do
              "2022"
            end
            hr
          end

          li do
            hr
            timeline.middle
            timeline.end class: "timeline-box" do
              "2023"
            end
          end
        end
      end
    end
  end
end
