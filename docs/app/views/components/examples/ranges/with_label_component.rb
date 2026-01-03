module Examples
  module Ranges
    class WithLabelComponent < Base
      def title
        "Range with label"
      end

      def example
        div class: "form-control w-full" do
          label class: "label" do
            span class: "label-text" do
              "Volume"
            end
            span class: "label-text-alt" do
              "50%"
            end
          end
          Range :primary, min: 0, max: 100, value: 50
        end
      end
    end
  end
end
