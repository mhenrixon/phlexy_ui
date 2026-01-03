module Examples
  module Tabs
    class BorderedComponent < Base
      def title
        "Bordered tabs"
      end

      def example
        DaisyUI::Tabs.new :border do |tabs|
          tabs.tab "Tab 1"
          tabs.tab "Tab 2", :active
          tabs.tab "Tab 3"
        end
      end
    end
  end
end
