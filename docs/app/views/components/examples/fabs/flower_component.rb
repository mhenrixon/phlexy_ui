# frozen_string_literal: true

module Examples
  module Fabs
    class FlowerComponent < Base
      def title
        "Fab flower (speed dial)"
      end

      def example
        div class: "relative w-full h-64 bg-base-200 rounded-lg" do
          Fab :flower, class: "absolute bottom-4 right-4" do
            Button(:primary, :circle) do
              svg xmlns: "http://www.w3.org/2000/svg", class: "h-6 w-6", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do |s|
                s.path stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M12 4v16m8-8H4"
              end
            end
            Button(:secondary, :circle) do
              svg xmlns: "http://www.w3.org/2000/svg", class: "h-5 w-5", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do |s|
                s.path stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"
              end
            end
            Button(:accent, :circle) do
              svg xmlns: "http://www.w3.org/2000/svg", class: "h-5 w-5", fill: "none", viewBox: "0 0 24 24", stroke: "currentColor" do |s|
                s.path stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M8.684 13.342C8.886 12.938 9 12.482 9 12c0-.482-.114-.938-.316-1.342m0 2.684a3 3 0 110-2.684m0 2.684l6.632 3.316m-6.632-6l6.632-3.316m0 0a3 3 0 105.367-2.684 3 3 0 00-5.367 2.684zm0 9.316a3 3 0 105.368 2.684 3 3 0 00-5.368-2.684z"
              end
            end
          end
        end
      end
    end
  end
end
