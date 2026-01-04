# frozen_string_literal: true

module Examples
  module Chats
    class ChatStartAndEndComponent < Base
      def title
        "Chat start and chat end"
      end

      def example
        Chat :start do |chat|
          chat.bubble do
            "Hey! How's it going?"
          end
        end

        Chat :start do |chat|
          chat.bubble do
            "Did you see the game last night?"
          end
        end

        Chat :end do |chat|
          chat.bubble do
            "Yeah! It was amazing!"
          end
        end

        Chat :end do |chat|
          chat.bubble do
            "That last minute goal was insane!"
          end
        end
      end
    end
  end
end
