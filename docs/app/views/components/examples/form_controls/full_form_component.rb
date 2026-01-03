module Examples
  module FormControls
    class FullFormComponent < Base
      def title
        "Full form with form controls"
      end

      def example
        form class: "flex flex-col gap-4" do
          FormControl do
            label class: "label" do
              span(class: "label-text") { "Username" }
            end
            Input type: "text", placeholder: "Enter username", required: true
          end

          FormControl do
            label class: "label" do
              span(class: "label-text") { "Email" }
            end
            Input type: "email", placeholder: "Enter email", required: true
          end

          FormControl do
            label class: "label" do
              span(class: "label-text") { "Password" }
            end
            Input type: "password", placeholder: "Enter password", required: true
          end

          Button :primary { "Submit" }
        end
      end
    end
  end
end
