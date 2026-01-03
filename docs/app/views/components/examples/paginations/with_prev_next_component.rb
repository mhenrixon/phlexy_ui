module Examples
  module Paginations
    class WithPrevNextComponent < Base
      def title
        "With prev/next buttons"
      end

      def example
        Pagination do
          Button(:outline, class: "join-item") { "«" }
          Button(:outline, class: "join-item") { "Page 22" }
          Button(:outline, class: "join-item") { "»" }
        end
      end
    end
  end
end
