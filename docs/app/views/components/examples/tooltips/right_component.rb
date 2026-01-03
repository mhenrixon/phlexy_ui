# frozen_string_literal: true

module Examples
  module Tooltips
    class RightComponent < Base
      def title
        "Right"
      end

      def example
        Tooltip :open, :right, tip: "hello" do
          Button do
            "Right"
          end
        end
      end
    end
  end
end
