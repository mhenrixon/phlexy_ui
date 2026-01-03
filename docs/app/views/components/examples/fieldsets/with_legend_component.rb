# frozen_string_literal: true

module Examples
  module Fieldsets
    class WithLegendComponent < Base
      def title
        "Fieldset with legend"
      end

      def example
        Fieldset class: "border border-base-300 p-4 rounded-box" do |fieldset|
          fieldset.legend { "Personal Information" }
          Input type: "text", placeholder: "Your name"
        end
      end
    end
  end
end
