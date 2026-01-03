module Examples
  module Chats
    class WithHeaderAndFooterComponent < Base
      def title
        "Chat with header and footer"
      end

      def example
        Chat :start do |chat|
          chat.header do
            "Obi-Wan Kenobi"
            time class: "text-xs opacity-50" do
              "12:45"
            end
          end

          chat.bubble do
            "You were supposed to destroy the Sith, not join them!"
          end

          chat.footer class: "opacity-50" do
            "Delivered"
          end
        end

        Chat :end do |chat|
          chat.header do
            "Anakin"
            time class: "text-xs opacity-50" do
              "12:46"
            end
          end

          chat.bubble do
            "Bring balance to the Force, not leave it in darkness!"
          end

          chat.footer class: "opacity-50" do
            "Seen at 12:46"
          end
        end
      end
    end
  end
end
