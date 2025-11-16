# frozen_string_literal: true

module DaisyUI
  # @component html class="fab"
  class Fab < Base
    self.component_class = :fab

    def view_template(&)
      public_send(as, class: classes, **attributes, &)
    end

    def close(**options, &)
      div(class: component_classes("fab-close", options:), **options, &)
    end

    def main_action(**options, &)
      div(class: component_classes("fab-main-action", options:), **options, &)
    end

    register_modifiers(
      # "sm:fab-flower"
      # "@sm:fab-flower"
      # "md:fab-flower"
      # "@md:fab-flower"
      # "lg:fab-flower"
      # "@lg:fab-flower"
      flower: "fab-flower"
    )
  end
end
