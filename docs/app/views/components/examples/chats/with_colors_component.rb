# frozen_string_literal: true

module Examples
  module Chats
    class WithColorsComponent < Base
      def title
        "Chat bubble with colors"
      end

      def example
        Chat :start do |chat|
          chat.bubble class: "chat-bubble-primary" do
            "Primary colored bubble"
          end
        end

        Chat :start do |chat|
          chat.bubble class: "chat-bubble-secondary" do
            "Secondary colored bubble"
          end
        end

        Chat :start do |chat|
          chat.bubble class: "chat-bubble-accent" do
            "Accent colored bubble"
          end
        end

        Chat :start do |chat|
          chat.bubble class: "chat-bubble-info" do
            "Info colored bubble"
          end
        end

        Chat :start do |chat|
          chat.bubble class: "chat-bubble-success" do
            "Success colored bubble"
          end
        end

        Chat :start do |chat|
          chat.bubble class: "chat-bubble-warning" do
            "Warning colored bubble"
          end
        end

        Chat :start do |chat|
          chat.bubble class: "chat-bubble-error" do
            "Error colored bubble"
          end
        end
      end
    end
  end
end
