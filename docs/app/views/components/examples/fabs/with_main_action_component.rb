# frozen_string_literal: true

module Examples
  module Fabs
    class WithMainActionComponent < Base
      def title
        "Fab with main action"
      end

      def example
        div class: "relative w-full h-64 bg-base-200 rounded-lg" do
          Fab class: "absolute bottom-4 right-4" do |fab|
            Button(:secondary, :circle, :sm) { "1" }
            Button(:secondary, :circle, :sm) { "2" }
            Button(:secondary, :circle, :sm) { "3" }
            fab.main_action do
              Button(:primary, :circle) do
                svg xmlns: "http://www.w3.org/2000/svg", class: "h-6 w-6", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do |s|
                  s.path stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M12 4v16m8-8H4"
                end
              end
            end
          end
        end
      end
    end
  end
end
