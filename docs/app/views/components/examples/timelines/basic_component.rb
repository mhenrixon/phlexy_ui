# frozen_string_literal: true

module Examples
  module Timelines
    class BasicComponent < Base
      def title
        "Timeline"
      end

      def example
        Timeline :vertical do |timeline|
          li do
            timeline.start class: "timeline-box" do
              "First step"
            end
            hr
          end

          li do
            hr
            timeline.middle do
              svg xmlns: "http://www.w3.org/2000/svg", viewBox: "0 0 20 20", fill: "currentColor", class: "h-5 w-5" do |s|
                s.path fill_rule: "evenodd", d: "M10 18a8 8 0 100-16 8 8 0 000 16zm3.857-9.809a.75.75 0 00-1.214-.882l-3.483 4.79-1.88-1.88a.75.75 0 10-1.06 1.061l2.5 2.5a.75.75 0 001.137-.089l4-5.5z", clip_rule: "evenodd"
              end
            end
            timeline.end class: "timeline-box" do
              "Second step"
            end
            hr
          end

          li do
            hr
            timeline.start class: "timeline-box" do
              "Third step"
            end
          end
        end
      end
    end
  end
end
