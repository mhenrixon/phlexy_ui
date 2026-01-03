# frozen_string_literal: true

module Examples
  module Fabs
    class BasicComponent < Base
      def title
        "Fab"
      end

      def example
        div class: "relative w-full h-48 bg-base-200 rounded-lg" do
          Fab class: "absolute bottom-4 right-4" do
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
