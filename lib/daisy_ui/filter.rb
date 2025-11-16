# frozen_string_literal: true

module DaisyUI
  # @component html class="filter"
  class Filter < Base
    self.component_class = :filter

    def view_template(&)
      public_send(as, class: classes, **attributes, &)
    end

    def reset(**options, &)
      reset_classes = component_classes("filter-reset", options:)
      input(type: :radio, class: reset_classes, **options, &)
    end
  end
end
