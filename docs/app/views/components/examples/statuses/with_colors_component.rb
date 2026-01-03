# frozen_string_literal: true

module Examples
  module Statuses
    class WithColorsComponent < Base
      def title
        "Status with colors"
      end

      def example
        div class: "flex flex-wrap gap-4" do
          Status :primary
          Status :secondary
          Status :accent
          Status :neutral
          Status :info
          Status :success
          Status :warning
          Status :error
        end
      end
    end
  end
end
