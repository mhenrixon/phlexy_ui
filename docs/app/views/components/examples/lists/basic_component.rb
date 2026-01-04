# frozen_string_literal: true

module Examples
  module Lists
    class BasicComponent < Base
      def title
        "List"
      end

      def example
        List do |list|
          list.row do
            span { "Item 1" }
            span { "Description for item 1" }
          end
          list.row do
            span { "Item 2" }
            span { "Description for item 2" }
          end
          list.row do
            span { "Item 3" }
            span { "Description for item 3" }
          end
        end
      end
    end
  end
end
