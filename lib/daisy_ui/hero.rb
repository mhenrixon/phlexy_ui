# frozen_string_literal: true

module DaisyUI
  # @component html class="hero"
  class Hero < Base
    self.component_class = :hero

    def view_template(&)
      public_send(as, class: classes, **attributes, &)
    end

    def content(**options, &)
      div(class: component_classes("hero-content", options:), **options, &)
    end

    def overlay(**options, &)
      div(class: component_classes("hero-overlay", options:), **options, &)
    end
  end
end
