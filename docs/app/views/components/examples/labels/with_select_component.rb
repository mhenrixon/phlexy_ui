module Examples
  module Labels
    class WithSelectComponent < Base
      def title
        "Label with select modifier"
      end

      def example
        Label :select do |label|
          label.text { "Country" }
          Select do
            option(selected: true, disabled: true) { "Select a country" }
            option { "United States" }
            option { "United Kingdom" }
            option { "Canada" }
          end
        end
      end
    end
  end
end
