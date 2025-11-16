# frozen_string_literal: true

module DaisyUI
  class Card < Base
    self.component_class = :card

    def initialize(*, as: :section, **)
      super
    end

    def view_template(&)
      public_send(as, class: classes, **attributes, &)
    end

    def body(**options, &)
      div(class: component_classes("card-body", options:), **options, &)
    end

    def title(**options, &)
      header(class: component_classes("card-title", options:), **options, &)
    end

    def actions(**options, &)
      footer(class: component_classes("card-actions", options:), **options, &)
    end

    register_modifiers(
      # "sm:image-full"
      # "@sm:image-full"
      # "md:image-full"
      # "@md:image-full"
      # "lg:image-full"
      # "@lg:image-full"
      image_full: "image-full",
      # "sm:card-bordered"
      # "@sm:card-bordered"
      # "md:card-bordered"
      # "@md:card-bordered"
      # "lg:card-bordered"
      # "@lg:card-bordered"
      bordered: "card-bordered",
      # "sm:card-normal"
      # "@sm:card-normal"
      # "md:card-normal"
      # "@md:card-normal"
      # "lg:card-normal"
      # "@lg:card-normal"
      normal: "card-normal",
      # "sm:card-compact"
      # "@sm:card-compact"
      # "md:card-compact"
      # "@md:card-compact"
      # "lg:card-compact"
      # "@lg:card-compact"
      compact: "card-compact",
      # "sm:card-side"
      # "@sm:card-side"
      # "md:card-side"
      # "@md:card-side"
      # "lg:card-side"
      # "@lg:card-side"
      side: "card-side",
      # "sm:glass"
      # "@sm:glass"
      # "md:glass"
      # "@md:glass"
      # "lg:glass"
      # "@lg:glass"
      glass: "glass",
      **COLOR_MODIFIERS
    )
  end
end
