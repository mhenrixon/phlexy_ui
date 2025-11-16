# frozen_string_literal: true

module DaisyUI
  class Navbar < Base
    self.component_class = :navbar

    def initialize(*, as: :nav, **)
      super
    end

    def view_template(&)
      public_send(as, class: classes, **attributes, &)
    end

    def start(*, as: :div, **options, &)
      public_send(as, class: component_classes("navbar-start", options:), **options, &)
    end

    def center(*, as: :div, **options, &)
      public_send(as, class: component_classes("navbar-center", options:), **options, &)
    end

    def end(*, as: :div, **options, &)
      public_send(as, class: component_classes("navbar-end", options:), **options, &)
    end

    register_modifiers(
      **COLOR_MODIFIERS
    )
  end
end
