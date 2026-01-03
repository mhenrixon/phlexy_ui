# frozen_string_literal: true

module Examples
  module Inputs
    class SizesComponent < Base
      def title
        "Input sizes"
      end

      def example
        div class: "flex flex-col gap-4 w-full" do
          Input :xs, type: "text", placeholder: "Extra small", class: "w-full max-w-xs"
          Input :sm, type: "text", placeholder: "Small", class: "w-full max-w-xs"
          Input :md, type: "text", placeholder: "Medium", class: "w-full max-w-xs"
          Input :lg, type: "text", placeholder: "Large", class: "w-full max-w-xs"
          Input :xl, type: "text", placeholder: "Extra large", class: "w-full max-w-xs"
        end
      end
    end
  end
end
