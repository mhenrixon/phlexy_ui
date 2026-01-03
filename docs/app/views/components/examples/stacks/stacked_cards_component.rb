module Examples
  module Stacks
    class StackedCardsComponent < Base
      def title
        "Stacked cards"
      end

      def example
        Stack do
          Card class: "bg-base-100 w-72 shadow-md" do |card|
            card.body do
              h2(class: "card-title") { "Notification 1" }
              p { "You have 3 new messages" }
            end
          end
          Card class: "bg-base-100 w-72 shadow-md" do |card|
            card.body do
              h2(class: "card-title") { "Notification 2" }
              p { "You have 2 new messages" }
            end
          end
          Card class: "bg-base-100 w-72 shadow-md" do |card|
            card.body do
              h2(class: "card-title") { "Notification 3" }
              p { "You have 1 new message" }
            end
          end
        end
      end
    end
  end
end
