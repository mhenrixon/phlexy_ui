# frozen_string_literal: true

module DaisyUI
  class FormControl < Base
    self.component_class = "form-control"

    def view_template(&)
      public_send(as, class: classes, **attributes, &)
    end
  end
end
