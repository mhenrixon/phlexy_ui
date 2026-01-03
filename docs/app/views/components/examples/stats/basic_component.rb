module Examples
  module Stats
    class BasicComponent < Base
      def title
        "Stat"
      end

      def example
        Stat class: "shadow" do |stat|
          stat.item do
            stat.title do
              "Total Page Views"
            end

            stat.value do
              "89,400"
            end

            stat.desc do
              "21% more than last month"
            end
          end
        end
      end
    end
  end
end
