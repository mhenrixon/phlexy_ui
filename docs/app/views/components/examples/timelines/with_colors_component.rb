module Examples
  module Timelines
    class WithColorsComponent < Base
      def title
        "Timeline with colors"
      end

      def example
        Timeline :vertical do
          li do
            Timeline.new.start class: "timeline-box" do
              "Complete"
            end
            Timeline.new.middle class: "text-primary"
            hr class: "bg-primary"
          end

          li do
            hr class: "bg-primary"
            Timeline.new.middle class: "text-primary"
            Timeline.new.end class: "timeline-box" do
              "In Progress"
            end
            hr class: "bg-primary"
          end

          li do
            hr class: "bg-primary"
            Timeline.new.middle
            Timeline.new.start class: "timeline-box" do
              "Pending"
            end
            hr
          end

          li do
            hr
            Timeline.new.middle
            Timeline.new.end class: "timeline-box" do
              "Not Started"
            end
          end
        end
      end
    end
  end
end
