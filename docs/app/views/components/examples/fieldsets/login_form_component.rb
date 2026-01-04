# frozen_string_literal: true

module Examples
  module Fieldsets
    class LoginFormComponent < Base
      def title
        "Login form with fieldset"
      end

      def example
        Fieldset class: "bg-base-200 border border-base-300 p-6 rounded-box w-full max-w-sm" do |fieldset|
          fieldset.legend { "Login" }
          div class: "flex flex-col gap-4" do
            div class: "form-control" do
              label(class: "label") { span(class: "label-text") { "Email" } }
              Input :primary, type: "email", placeholder: "email@example.com", required: true
            end
            div class: "form-control" do
              label(class: "label") { span(class: "label-text") { "Password" } }
              Input :primary, type: "password", placeholder: "Enter password", required: true
            end
            div class: "form-control mt-2" do
              Button(:primary, :block) { "Sign in" }
            end
          end
        end
      end
    end
  end
end
