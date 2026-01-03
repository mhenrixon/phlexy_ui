module Examples
  module Statuses
    class SizesComponent < Base
      def title
        "Status sizes"
      end

      def example
        div class: "flex flex-wrap items-center gap-4" do
          Status :xs, :primary
          Status :sm, :primary
          Status :md, :primary
          Status :lg, :primary
          Status :xl, :primary
        end
      end
    end
  end
end
