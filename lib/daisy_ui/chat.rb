# frozen_string_literal: true

module DaisyUI
  # @component html class="chat"
  class Chat < Base
    self.component_class = :chat

    def view_template(&)
      public_send(as, class: classes, **attributes, &)
    end

    def image(**options, &)
      div(class: component_classes("chat-image", options:), **options, &)
    end

    def header(**options, &)
      div(class: component_classes("chat-header", options:), **options, &)
    end

    def bubble(**options, &)
      div(class: component_classes("chat-bubble", options:), **options, &)
    end

    def footer(**options, &)
      div(class: component_classes("chat-footer", options:), **options, &)
    end

    register_modifiers(
      # "sm:chat-start"
      # "@sm:chat-start"
      # "md:chat-start"
      # "@md:chat-start"
      # "lg:chat-start"
      # "@lg:chat-start"
      start: "chat-start",
        # "sm:chat-end"
        # "@sm:chat-end"
        # "md:chat-end"
        # "@md:chat-end"
        # "lg:chat-end"
        # "@lg:chat-end"
      end: "chat-end"
    )
  end
end
