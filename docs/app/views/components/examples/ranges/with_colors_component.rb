# frozen_string_literal: true

module Examples
  module Ranges
    class WithColorsComponent < Base
      def title
        "Range with colors"
      end

      def example
        div class: "flex flex-col gap-4 w-full" do
          Range :primary, min: 0, max: 100, value: 40
          Range :secondary, min: 0, max: 100, value: 50
          Range :accent, min: 0, max: 100, value: 60
          Range :neutral, min: 0, max: 100, value: 70
          Range :success, min: 0, max: 100, value: 80
          Range :warning, min: 0, max: 100, value: 30
          Range :info, min: 0, max: 100, value: 20
          Range :error, min: 0, max: 100, value: 10
        end
      end
    end
  end
end
