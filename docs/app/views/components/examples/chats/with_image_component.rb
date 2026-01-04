# frozen_string_literal: true

module Examples
  module Chats
    class WithImageComponent < Base
      def title
        "Chat with image"
      end

      def example
        Chat :start do |chat|
          chat.image do
            div class: "w-10 rounded-full" do
              img alt: "User avatar", src: "https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp"
            end
          end

          chat.bubble do
            "You were the Chosen One!"
          end
        end

        Chat :end do |chat|
          chat.image do
            div class: "w-10 rounded-full" do
              img alt: "User avatar", src: "https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp"
            end
          end

          chat.bubble do
            "I hate you!"
          end
        end
      end
    end
  end
end
