# frozen_string_literal: true

module DaisyUI
  # @component html class="steps"
  class Steps < Base
    self.component_class = :steps

    def initialize(*, as: :ul, **)
      super
    end

    def view_template(&)
      public_send(as, class: classes, **attributes, &)
    end

    def step(**options, &)
      li(class: component_classes("step", options:), **options, &)
    end

    def icon(**options, &)
      div(class: component_classes("step-icon", options:), **options, &)
    end

    register_modifiers(
      # "sm:steps-vertical"
      # "@sm:steps-vertical"
      # "md:steps-vertical"
      # "@md:steps-vertical"
      # "lg:steps-vertical"
      # "@lg:steps-vertical"
      vertical: "steps-vertical",
      # "sm:steps-horizontal"
      # "@sm:steps-horizontal"
      # "md:steps-horizontal"
      # "@md:steps-horizontal"
      # "lg:steps-horizontal"
      # "@lg:steps-horizontal"
      horizontal: "steps-horizontal"
    )
  end
end
