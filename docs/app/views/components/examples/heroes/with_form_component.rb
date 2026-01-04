# frozen_string_literal: true

module Examples
  module Heroes
    class WithFormComponent < Base
      def title
        "Hero with form"
      end

      def example
        Hero class: "bg-base-200 min-h-96" do |hero|
          hero.content class: "flex-col lg:flex-row-reverse" do
            div class: "text-center lg:text-left" do
              h1(class: "text-5xl font-bold") { "Login now!" }
              p(class: "py-6") { "Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda excepturi exercitationem quasi." }
            end
            Card class: "bg-base-100 w-full max-w-sm shrink-0 shadow-2xl" do |card|
              card.body do
                div class: "form-control" do
                  label(class: "label") { span(class: "label-text") { "Email" } }
                  Input type: "email", placeholder: "email", class: "input-bordered", required: true
                end
                div class: "form-control" do
                  label(class: "label") { span(class: "label-text") { "Password" } }
                  Input type: "password", placeholder: "password", class: "input-bordered", required: true
                  label(class: "label") { a(class: "label-text-alt link link-hover") { "Forgot password?" } }
                end
                div class: "form-control mt-6" do
                  Button(:primary) { "Login" }
                end
              end
            end
          end
        end
      end
    end
  end
end
