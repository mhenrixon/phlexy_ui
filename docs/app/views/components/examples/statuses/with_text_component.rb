module Examples
  module Statuses
    class WithTextComponent < Base
      def title
        "Status with text"
      end

      def example
        div class: "flex flex-col gap-2" do
          div class: "flex items-center gap-2" do
            Status :success
            span { "Online" }
          end
          div class: "flex items-center gap-2" do
            Status :warning
            span { "Away" }
          end
          div class: "flex items-center gap-2" do
            Status :error
            span { "Offline" }
          end
        end
      end
    end
  end
end
