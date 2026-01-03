# frozen_string_literal: true

module Examples
  module Labels
    class SizesComponent < Base
      def title
        "Label sizes"
      end

      def example
        div class: "flex flex-col gap-4" do
          Label :floating do |label|
            label.text(class: "text-xs") { "Extra small" }
            Input :xs, type: "text", placeholder: " "
          end
          Label :floating do |label|
            label.text(class: "text-sm") { "Small" }
            Input :sm, type: "text", placeholder: " "
          end
          Label :floating do |label|
            label.text { "Medium (default)" }
            Input :md, type: "text", placeholder: " "
          end
          Label :floating do |label|
            label.text(class: "text-lg") { "Large" }
            Input :lg, type: "text", placeholder: " "
          end
        end
      end
    end
  end
end
