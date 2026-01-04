# frozen_string_literal: true

module Examples
  module Lists
    class WithColGrowComponent < Base
      def title
        "List with column grow"
      end

      def example
        List :col_grow do |list|
          list.row do
            span { "Name" }
            span { "John Doe" }
            span { "Action" }
          end
          list.row do
            span { "Email" }
            span { "john@example.com" }
            span { "Action" }
          end
          list.row do
            span { "Phone" }
            span { "+1 234 567 890" }
            span { "Action" }
          end
        end
      end
    end
  end
end
