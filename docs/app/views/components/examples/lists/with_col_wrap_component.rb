module Examples
  module Lists
    class WithColWrapComponent < Base
      def title
        "List with column wrap"
      end

      def example
        List :col_wrap do |list|
          list.row do
            span { "Title" }
            span { "This is a longer description that may wrap to multiple lines" }
            span { "Extra info" }
          end
          list.row do
            span { "Another title" }
            span { "Another longer description text" }
            span { "More info" }
          end
        end
      end
    end
  end
end
