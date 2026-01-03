module Examples
  module Dividers
    class WithTextComponent < Base
      def title
        "Divider with text"
      end

      def example
        div class: "flex w-full flex-col" do
          div class: "card bg-base-300 rounded-box grid h-20 place-items-center" do
            "Content"
          end

          Divider do
            "OR"
          end

          div class: "card bg-base-300 rounded-box grid h-20 place-items-center" do
            "Content"
          end
        end
      end
    end
  end
end
