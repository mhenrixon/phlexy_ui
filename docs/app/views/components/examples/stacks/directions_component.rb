# frozen_string_literal: true

module Examples
  module Stacks
    class DirectionsComponent < Base
      def title
        "Stack directions"
      end

      def example
        div class: "flex flex-wrap gap-8" do
          div do
            p(class: "text-center mb-2 text-sm") { "Top (default)" }
            Stack :top do
              div(class: "bg-primary text-primary-content grid h-20 w-32 place-content-center rounded") { "1" }
              div(class: "bg-secondary text-secondary-content grid h-20 w-32 place-content-center rounded") { "2" }
              div(class: "bg-accent text-accent-content grid h-20 w-32 place-content-center rounded") { "3" }
            end
          end

          div do
            p(class: "text-center mb-2 text-sm") { "Bottom" }
            Stack :bottom do
              div(class: "bg-primary text-primary-content grid h-20 w-32 place-content-center rounded") { "1" }
              div(class: "bg-secondary text-secondary-content grid h-20 w-32 place-content-center rounded") { "2" }
              div(class: "bg-accent text-accent-content grid h-20 w-32 place-content-center rounded") { "3" }
            end
          end

          div do
            p(class: "text-center mb-2 text-sm") { "Start" }
            Stack :start do
              div(class: "bg-primary text-primary-content grid h-20 w-32 place-content-center rounded") { "1" }
              div(class: "bg-secondary text-secondary-content grid h-20 w-32 place-content-center rounded") { "2" }
              div(class: "bg-accent text-accent-content grid h-20 w-32 place-content-center rounded") { "3" }
            end
          end

          div do
            p(class: "text-center mb-2 text-sm") { "End" }
            Stack :end do
              div(class: "bg-primary text-primary-content grid h-20 w-32 place-content-center rounded") { "1" }
              div(class: "bg-secondary text-secondary-content grid h-20 w-32 place-content-center rounded") { "2" }
              div(class: "bg-accent text-accent-content grid h-20 w-32 place-content-center rounded") { "3" }
            end
          end
        end
      end
    end
  end
end
