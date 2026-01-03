module Examples
  module Selects
    class BasicComponent < Base
      def title
        "Select"
      end

      def example
        Select do
          option(disabled: true, selected: true) { "Pick one" }
          option { "Star Wars" }
          option { "Harry Potter" }
          option { "Lord of the Rings" }
          option { "Planet of the Apes" }
          option { "Star Trek" }
        end
      end
    end
  end
end
