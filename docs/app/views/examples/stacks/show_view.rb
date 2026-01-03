# frozen_string_literal: true

module Examples
  module Stacks
    class ShowView < BaseView
      def view_template
        title do
          "Stack"
        end

        render_examples [
          BasicComponent,
          DirectionsComponent,
          StackedCardsComponent,
          StackedImagesComponent,
        ]
      end
    end
  end
end
