module Examples
  module Paginations
    class WithDisabledComponent < Base
      def title
        "With disabled button"
      end

      def example
        Pagination do
          Button(class: "join-item", disabled: true) { "«" }
          Button(class: "join-item") { "1" }
          Button(:active, class: "join-item") { "2" }
          Button(class: "join-item") { "3" }
          Button(class: "join-item") { "»" }
        end
      end
    end
  end
end
