# frozen_string_literal: true

module Examples
  module Paginations
    class BasicComponent < Base
      def title
        "Pagination"
      end

      def example
        Pagination do
          Button(:sm, class: "join-item") { "1" }
          Button(:sm, :active, class: "join-item") { "2" }
          Button(:sm, class: "join-item") { "3" }
          Button(:sm, class: "join-item") { "4" }
        end
      end
    end
  end
end
