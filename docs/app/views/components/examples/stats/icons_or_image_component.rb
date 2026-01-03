module Examples
  module Stats
    class IconsOrImageComponent < Base
      def title
        "Stat with icons or image"
      end

      def example
        Stat class: "shadow" do |stat|
          stat.item do
            stat.figure class: "text-primary" do
              svg xmlns: "http://www.w3.org/2000/svg", fill: "none", viewBox: "0 0 24 24", class: "inline-block h-8 w-8 stroke-current" do |s|
                s.path stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"
              end
            end

            stat.title do
              "Total Likes"
            end

            stat.value class: "text-primary" do
              "25.6K"
            end

            stat.desc do
              "21% more than last month"
            end
          end

          stat.item do
            stat.figure class: "text-secondary" do
              svg xmlns: "http://www.w3.org/2000/svg", fill: "none", viewBox: "0 0 24 24", class: "inline-block h-8 w-8 stroke-current" do |s|
                s.path stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M13 10V3L4 14h7v7l9-11h-7z"
              end
            end

            stat.title do
              "Page Views"
            end

            stat.value class: "text-secondary" do
              "2.6M"
            end

            stat.desc do
              "21% more than last month"
            end
          end

          stat.item do
            stat.figure class: "text-secondary" do
              div class: "avatar online" do
                div class: "w-16 rounded-full" do
                  img src: "https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp", alt: "Avatar"
                end
              end
            end

            stat.value do
              "86%"
            end

            stat.title do
              "Tasks done"
            end

            stat.desc class: "text-secondary" do
              "31 tasks remaining"
            end
          end
        end
      end
    end
  end
end
