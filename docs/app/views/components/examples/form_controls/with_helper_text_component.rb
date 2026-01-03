module Examples
  module FormControls
    class WithHelperTextComponent < Base
      def title
        "Form control with helper text"
      end

      def example
        FormControl do
          label class: "label" do
            span(class: "label-text") { "Email" }
          end
          Input type: "email", placeholder: "Enter email"
          label class: "label" do
            span(class: "label-text-alt") { "We'll never share your email" }
          end
        end
      end
    end
  end
end
