# frozen_string_literal: true

module Examples
  module Inputs
    class WithColorsComponent < Base
      def title
        "Input with colors"
      end

      def example
        div class: "flex flex-col gap-4 w-full" do
          Input :primary, type: "text", placeholder: "Primary", class: "w-full max-w-xs"
          Input :secondary, type: "text", placeholder: "Secondary", class: "w-full max-w-xs"
          Input :accent, type: "text", placeholder: "Accent", class: "w-full max-w-xs"
          Input :neutral, type: "text", placeholder: "Neutral", class: "w-full max-w-xs"
          Input :success, type: "text", placeholder: "Success", class: "w-full max-w-xs"
          Input :warning, type: "text", placeholder: "Warning", class: "w-full max-w-xs"
          Input :info, type: "text", placeholder: "Info", class: "w-full max-w-xs"
          Input :error, type: "text", placeholder: "Error", class: "w-full max-w-xs"
        end
      end
    end
  end
end
