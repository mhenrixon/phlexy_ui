module Examples
  module Fieldsets
    class BasicComponent < Base
      def title
        "Fieldset"
      end

      def example
        Fieldset class: "border border-base-300 p-4 rounded-box" do
          Input type: "text", placeholder: "Type here"
        end
      end
    end
  end
end
