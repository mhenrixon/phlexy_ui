module Examples
  module Paginations
    class SizesComponent < Base
      def title
        "Pagination sizes"
      end

      def example
        div class: "flex flex-col gap-4" do
          Pagination do
            Button(:xs, class: "join-item") { "1" }
            Button(:xs, :active, class: "join-item") { "2" }
            Button(:xs, class: "join-item") { "3" }
          end

          Pagination do
            Button(:sm, class: "join-item") { "1" }
            Button(:sm, :active, class: "join-item") { "2" }
            Button(:sm, class: "join-item") { "3" }
          end

          Pagination do
            Button(:md, class: "join-item") { "1" }
            Button(:md, :active, class: "join-item") { "2" }
            Button(:md, class: "join-item") { "3" }
          end

          Pagination do
            Button(:lg, class: "join-item") { "1" }
            Button(:lg, :active, class: "join-item") { "2" }
            Button(:lg, class: "join-item") { "3" }
          end
        end
      end
    end
  end
end
