# frozen_string_literal: true

module Examples
  module HoverGalleries
    class ShowView < BaseView
      def view_template
        title do
          "Hover Gallery"
        end

        render_examples [
          BasicComponent,
          WithMultipleImagesComponent,
        ]
      end
    end
  end
end
