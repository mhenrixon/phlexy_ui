# frozen_string_literal: true

module Examples
  module Chats
    class ShowView < BaseView
      def view_template
        title do
          "Chat"
        end

        render_examples [
          BasicComponent,
          ChatStartAndEndComponent,
          WithImageComponent,
          WithHeaderAndFooterComponent,
          WithColorsComponent,
          FullConversationComponent,
        ]
      end
    end
  end
end
