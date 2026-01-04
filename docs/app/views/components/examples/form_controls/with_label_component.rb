# frozen_string_literal: true

module Examples
  module FormControls
    class WithLabelComponent < Base
      def title
        "Form control with label"
      end

      def example
        FormControl do
          label class: "label" do
            span(class: "label-text") { "Your name" }
          end
          Input type: "text", placeholder: "Enter your name"
        end
      end
    end
  end
end
