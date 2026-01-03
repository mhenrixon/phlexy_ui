module Examples
  module Stats
    class CenteredItemsComponent < Base
      def title
        "Centered items"
      end

      def example
        Stat class: "shadow" do |stat|
          stat.item class: "place-items-center" do
            stat.title do
              "Downloads"
            end

            stat.value do
              "31K"
            end

            stat.desc do
              "From January 1st to February 1st"
            end
          end

          stat.item class: "place-items-center" do
            stat.title do
              "Users"
            end

            stat.value class: "text-secondary" do
              "4,200"
            end

            stat.desc class: "text-secondary" do
              "↗︎ 40 (2%)"
            end
          end

          stat.item class: "place-items-center" do
            stat.title do
              "New Registers"
            end

            stat.value do
              "1,200"
            end

            stat.desc do
              "↘︎ 90 (14%)"
            end
          end
        end
      end
    end
  end
end
