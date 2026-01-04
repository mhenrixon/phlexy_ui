# frozen_string_literal: true

module Examples
  module Chats
    class BasicComponent < Base
      def title
        "Chat bubble"
      end

      def example
        Chat :start do |chat|
          chat.bubble do
            "It's over Anakin, I have the high ground."
          end
        end

        Chat :end do |chat|
          chat.bubble do
            "You underestimate my power!"
          end
        end
      end
    end
  end
end
