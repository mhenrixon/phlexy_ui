module Examples
  module Joins
    class RadioButtonsComponent < Base
      def title
        "Join with radio buttons"
      end

      def example
        Join do
          input class: "join-item btn", type: "radio", name: "options", aria_label: "Radio 1", checked: true
          input class: "join-item btn", type: "radio", name: "options", aria_label: "Radio 2"
          input class: "join-item btn", type: "radio", name: "options", aria_label: "Radio 3"
        end
      end
    end
  end
end
