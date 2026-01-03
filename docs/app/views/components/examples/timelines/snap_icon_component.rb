# frozen_string_literal: true

module Examples
  module Timelines
    class SnapIconComponent < Base
      def title
        "Snap icon to start"
      end

      def example
        Timeline :snap_icon, :vertical do
          li do
            div class: "timeline-middle" do
              svg xmlns: "http://www.w3.org/2000/svg", viewBox: "0 0 20 20", fill: "currentColor", class: "h-5 w-5 text-primary" do |s|
                s.path fill_rule: "evenodd", d: "M10 18a8 8 0 100-16 8 8 0 000 16zm3.857-9.809a.75.75 0 00-1.214-.882l-3.483 4.79-1.88-1.88a.75.75 0 10-1.06 1.061l2.5 2.5a.75.75 0 001.137-.089l4-5.5z", clip_rule: "evenodd"
              end
            end
            div class: "timeline-end mb-10" do
              div class: "text-lg font-black" do
                "Task 1"
              end
              p do
                "First task completed successfully."
              end
            end
            hr class: "bg-primary"
          end

          li do
            hr class: "bg-primary"
            div class: "timeline-middle" do
              svg xmlns: "http://www.w3.org/2000/svg", viewBox: "0 0 20 20", fill: "currentColor", class: "h-5 w-5 text-primary" do |s|
                s.path fill_rule: "evenodd", d: "M10 18a8 8 0 100-16 8 8 0 000 16zm3.857-9.809a.75.75 0 00-1.214-.882l-3.483 4.79-1.88-1.88a.75.75 0 10-1.06 1.061l2.5 2.5a.75.75 0 001.137-.089l4-5.5z", clip_rule: "evenodd"
              end
            end
            div class: "timeline-end mb-10" do
              div class: "text-lg font-black" do
                "Task 2"
              end
              p do
                "Second task completed successfully."
              end
            end
            hr
          end

          li do
            hr
            div class: "timeline-middle" do
              svg xmlns: "http://www.w3.org/2000/svg", viewBox: "0 0 20 20", fill: "currentColor", class: "h-5 w-5" do |s|
                s.path fill_rule: "evenodd", d: "M10 18a8 8 0 100-16 8 8 0 000 16zm.75-13a.75.75 0 00-1.5 0v5c0 .414.336.75.75.75h4a.75.75 0 000-1.5h-3.25V5z", clip_rule: "evenodd"
              end
            end
            div class: "timeline-end mb-10" do
              div class: "text-lg font-black" do
                "Task 3"
              end
              p do
                "Third task in progress."
              end
            end
          end
        end
      end
    end
  end
end
