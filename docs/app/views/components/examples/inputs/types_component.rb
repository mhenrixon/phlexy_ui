module Examples
  module Inputs
    class TypesComponent < Base
      def title
        "Different input types"
      end

      def example
        div class: "flex flex-col gap-4 w-full" do
          Input type: "text", placeholder: "Text input", class: "w-full max-w-xs"
          Input type: "password", placeholder: "Password input", class: "w-full max-w-xs"
          Input type: "email", placeholder: "Email input", class: "w-full max-w-xs"
          Input type: "number", placeholder: "Number input", class: "w-full max-w-xs"
          Input type: "search", placeholder: "Search input", class: "w-full max-w-xs"
          Input type: "tel", placeholder: "Telephone input", class: "w-full max-w-xs"
          Input type: "url", placeholder: "URL input", class: "w-full max-w-xs"
          Input type: "date", class: "w-full max-w-xs"
          Input type: "time", class: "w-full max-w-xs"
          Input type: "datetime-local", class: "w-full max-w-xs"
        end
      end
    end
  end
end
