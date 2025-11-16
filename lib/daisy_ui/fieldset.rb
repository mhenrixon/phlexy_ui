# frozen_string_literal: true

module DaisyUI
  # @component html class="fieldset"
  class Fieldset < Base
    self.component_class = :fieldset

    def initialize(*, as: :fieldset, **)
      super
    end

    def view_template(&)
      public_send(as, class: classes, **attributes, &)
    end

    def legend(**options, &)
      super(class: component_classes("fieldset-legend", options:), **options, &)
    end
  end
end
