module Examples
  module Stats
    class ResponsiveComponent < Base
      def title
        "Responsive"
      end

      def subtitle
        "Vertical on small screens, horizontal on large screens."
      end

      def example
        Stat :vertical, class: "shadow lg:stats-horizontal" do |stat|
          stat.item do
            stat.title do
              "Downloads"
            end

            stat.value do
              "31K"
            end

            stat.desc do
              "Jan 1st - Feb 1st"
            end
          end

          stat.item do
            stat.title do
              "New Users"
            end

            stat.value do
              "4,200"
            end

            stat.desc do
              "↗︎ 400 (22%)"
            end
          end

          stat.item do
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
