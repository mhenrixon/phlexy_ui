module Examples
  module Tabs
    class BasicComponent < Base
      def title
        "Tabs"
      end

      def example
        render DaisyUI::Tabs.new { |tabs|
          tabs.tab "Tab 1"
          tabs.tab "Tab 2", :active
          tabs.tab "Tab 3"
        }
      end
    end
  end
end
