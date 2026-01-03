module Examples
  module Chats
    class FullConversationComponent < Base
      def title
        "Full conversation example"
      end

      def example
        Chat :start do |chat|
          chat.image do
            div class: "w-10 rounded-full" do
              img alt: "Obi-Wan", src: "https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp"
            end
          end

          chat.header do
            "Obi-Wan Kenobi"
            time class: "text-xs opacity-50" do
              "2 hours ago"
            end
          end

          chat.bubble class: "chat-bubble-primary" do
            "You were my brother, Anakin!"
          end

          chat.footer class: "opacity-50" do
            "Seen"
          end
        end

        Chat :end do |chat|
          chat.image do
            div class: "w-10 rounded-full" do
              img alt: "Anakin", src: "https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp"
            end
          end

          chat.header do
            "Anakin"
            time class: "text-xs opacity-50" do
              "2 hours ago"
            end
          end

          chat.bubble do
            "I loved you!"
          end

          chat.footer class: "opacity-50" do
            "Delivered"
          end
        end
      end
    end
  end
end
