module Examples
  module Tabs
    class BoxedComponent < Base
      def title
        "Boxed tabs"
      end

      def example
        DaisyUI::Tabs.new :box do |tabs|
          tabs.tab "Tab 1"
          tabs.tab "Tab 2", :active
          tabs.tab "Tab 3"
        end
      end
    end
  end
end
