module Examples
  module Tabs
    class LiftedComponent < Base
      def title
        "Lifted tabs"
      end

      def example
        render DaisyUI::Tabs.new(:lift) { |tabs|
          tabs.tab "Tab 1"
          tabs.tab "Tab 2", :active
          tabs.tab "Tab 3"
        }
      end
    end
  end
end
