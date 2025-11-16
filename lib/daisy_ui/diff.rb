# frozen_string_literal: true

module DaisyUI
  # @component html class="diff"
  class Diff < Base
    self.component_class = :diff

    def initialize(*, as: :figure, **)
      super
    end

    def view_template(&)
      public_send(as, class: classes, **attributes, &)
    end

    def item_1(**options, &)
      div(class: component_classes("diff-item-1", options:), **options, &)
    end

    def item_2(**options, &)
      div(class: component_classes("diff-item-2", options:), **options, &)
    end

    def resizer(**options, &)
      div(class: component_classes("diff-resizer", options:), **options, &)
    end
  end
end
