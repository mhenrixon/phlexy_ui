# frozen_string_literal: true

module DaisyUI
  class Dropdown < Base
    self.component_class = :dropdown

    def initialize(*modifiers, as: :div, id: nil, **options)
      super
    end

    def view_template
      if tap_to_close?
        details(class: classes, **attributes) do
          yield self if block_given?
        end
      else
        public_send(as, class: classes, **attributes) do
          yield self if block_given?
        end
      end
    end

    def button(*, **, &)
      if tap_to_close?
        render Button.new(*, as: :summary, **, &)
      else
        render Button.new(*, as: :div, role: :button, tabindex: 0, **, &)
      end
    end

    def content(*, as: :div, **options, &)
      content_classes = component_classes("dropdown-content", options:)

      if tap_to_close?
        render_as(*, as:, class: content_classes, **options, &)
      else
        render_as(*, as:, tabindex: 0, class: content_classes, **options, &)
      end
    end

    def menu(*, **options, &)
      menu_classes = component_classes("dropdown-content", options:)

      if tap_to_close?
        render Menu.new(*, class: menu_classes, **options, &)
      else
        render Menu.new(*, tabindex: 0, class: menu_classes, **options, &)
      end
    end

    def tap_to_close?
      modifiers.include?(:tap_to_close)
    end

    register_modifiers(
      # Placement
      # "sm:dropdown-start"
      # "@sm:dropdown-start"
      # "md:dropdown-start"
      # "@md:dropdown-start"
      # "lg:dropdown-start"
      # "@lg:dropdown-start"
      # "xl:dropdown-start"
      # "@xl:dropdown-start"
      start: "dropdown-start",
      # "sm:dropdown-center"
      # "@sm:dropdown-center"
      # "md:dropdown-center"
      # "@md:dropdown-center"
      # "lg:dropdown-center"
      # "@lg:dropdown-center"
      # "xl:dropdown-center"
      # "@xl:dropdown-center"
      center: "dropdown-center",
      # "sm:dropdown-end"
      # "@sm:dropdown-end"
      # "md:dropdown-end"
      # "@md:dropdown-end"
      # "lg:dropdown-end"
      # "@lg:dropdown-end"
      # "xl:dropdown-end"
      # "@xl:dropdown-end"
      end: "dropdown-end",
      # "sm:dropdown-top"
      # "@sm:dropdown-top"
      # "md:dropdown-top"
      # "@md:dropdown-top"
      # "lg:dropdown-top"
      # "@lg:dropdown-top"
      # "xl:dropdown-top"
      # "@xl:dropdown-top"
      top: "dropdown-top",
      # "sm:dropdown-bottom"
      # "@sm:dropdown-bottom"
      # "md:dropdown-bottom"
      # "@md:dropdown-bottom"
      # "lg:dropdown-bottom"
      # "@lg:dropdown-bottom"
      # "xl:dropdown-bottom"
      # "@xl:dropdown-bottom"
      bottom: "dropdown-bottom",
      # "sm:dropdown-left"
      # "@sm:dropdown-left"
      # "md:dropdown-left"
      # "@md:dropdown-left"
      # "lg:dropdown-left"
      # "@lg:dropdown-left"
      # "xl:dropdown-left"
      # "@xl:dropdown-left"
      left: "dropdown-left",
      # "sm:dropdown-right"
      # "@sm:dropdown-right"
      # "md:dropdown-right"
      # "@md:dropdown-right"
      # "lg:dropdown-right"
      # "@lg:dropdown-right"
      # "xl:dropdown-right"
      # "@xl:dropdown-right"
      right: "dropdown-right",
      # Behavior
      # "sm:dropdown-hover"
      # "@sm:dropdown-hover"
      # "md:dropdown-hover"
      # "@md:dropdown-hover"
      # "lg:dropdown-hover"
      # "@lg:dropdown-hover"
      # "xl:dropdown-hover"
      # "@xl:dropdown-hover"
      hover: "dropdown-hover",
      # "sm:dropdown-open"
      # "@sm:dropdown-open"
      # "md:dropdown-open"
      # "@md:dropdown-open"
      # "lg:dropdown-open"
      # "@lg:dropdown-open"
      # "xl:dropdown-open"
      # "@xl:dropdown-open"
      open: "dropdown-open"
    )
  end
end
