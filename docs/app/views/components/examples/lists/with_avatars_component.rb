module Examples
  module Lists
    class WithAvatarsComponent < Base
      def title
        "List with avatars"
      end

      def example
        List do |list|
          list.row do
            Avatar do
              div class: "w-10 rounded-full" do
                img src: "https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp", alt: "Avatar"
              end
            end
            div do
              div(class: "font-bold") { "Jane Cooper" }
              div(class: "text-sm opacity-50") { "Designer" }
            end
          end
          list.row do
            Avatar do
              div class: "w-10 rounded-full" do
                img src: "https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp", alt: "Avatar"
              end
            end
            div do
              div(class: "font-bold") { "John Smith" }
              div(class: "text-sm opacity-50") { "Developer" }
            end
          end
        end
      end
    end
  end
end
