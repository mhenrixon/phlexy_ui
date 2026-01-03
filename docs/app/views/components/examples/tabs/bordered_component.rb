# frozen_string_literal: true

module Examples
  module Tabs
    class BorderedComponent < Base
      def title
        "Bordered tabs"
      end

      def example
        render DaisyUI::Tabs.new(:border) { |tabs|
          tabs.tab "Tab 1"
          tabs.tab "Tab 2", :active
          tabs.tab "Tab 3"
        }
      end
    end
  end
end
