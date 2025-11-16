# frozen_string_literal: true

module DaisyUI
  # @component html class="mockup-phone"
  class MockupPhone < Base
    self.component_class = "mockup-phone"

    def view_template(&)
      public_send(as, class: classes, **attributes, &)
    end

    def camera(**options, &)
      div(class: component_classes("mockup-phone-camera", options:), **options, &)
    end

    def display(**options, &)
      div(class: component_classes("mockup-phone-display", options:), **options, &)
    end
  end
end
