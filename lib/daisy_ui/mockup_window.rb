# frozen_string_literal: true

module DaisyUI
  # @component html class="mockup-window"
  class MockupWindow < Base
    self.component_class = "mockup-window"

    def view_template(&)
      public_send(as, class: classes, **attributes, &)
    end
  end
end
