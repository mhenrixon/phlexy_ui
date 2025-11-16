# frozen_string_literal: true

module DaisyUI
  # @component html class="mockup-browser"
  class MockupBrowser < Base
    self.component_class = "mockup-browser"

    def view_template(&)
      public_send(as, class: classes, **attributes, &)
    end

    def toolbar(**options, &)
      div(class: component_classes("mockup-browser-toolbar", options:), **options, &)
    end
  end
end
