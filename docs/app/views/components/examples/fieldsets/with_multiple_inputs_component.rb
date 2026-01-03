# frozen_string_literal: true

module Examples
  module Fieldsets
    class WithMultipleInputsComponent < Base
      def title
        "Fieldset with multiple inputs"
      end

      def example
        Fieldset class: "border border-base-300 p-4 rounded-box" do |fieldset|
          fieldset.legend { "Contact Details" }
          div class: "flex flex-col gap-4" do
            div class: "form-control" do
              label(class: "label") { span(class: "label-text") { "Email" } }
              Input type: "email", placeholder: "email@example.com"
            end
            div class: "form-control" do
              label(class: "label") { span(class: "label-text") { "Phone" } }
              Input type: "tel", placeholder: "+1 (555) 000-0000"
            end
          end
        end
      end
    end
  end
end
