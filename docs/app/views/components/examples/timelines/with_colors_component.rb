# frozen_string_literal: true

module Examples
  module Timelines
    class WithColorsComponent < Base
      def title
        "Timeline with colors"
      end

      def example
        Timeline :vertical do |timeline|
          li do
            timeline.start class: "timeline-box" do
              "Complete"
            end
            timeline.middle class: "text-primary"
            hr class: "bg-primary"
          end

          li do
            hr class: "bg-primary"
            timeline.middle class: "text-primary"
            timeline.end class: "timeline-box" do
              "In Progress"
            end
            hr class: "bg-primary"
          end

          li do
            hr class: "bg-primary"
            timeline.middle
            timeline.start class: "timeline-box" do
              "Pending"
            end
            hr
          end

          li do
            hr
            timeline.middle
            timeline.end class: "timeline-box" do
              "Not Started"
            end
          end
        end
      end
    end
  end
end
