# frozen_string_literal: true

module Examples
  module Tabs
    class SizesComponent < Base
      def title
        "Tab sizes"
      end

      def example
        div class: "flex flex-col gap-4" do
          render DaisyUI::Tabs.new(:border, :xs) { |tabs|
            tabs.tab "XS"
            tabs.tab "Tabs", :active
            tabs.tab "Size"
          }

          render DaisyUI::Tabs.new(:border, :sm) { |tabs|
            tabs.tab "SM"
            tabs.tab "Tabs", :active
            tabs.tab "Size"
          }

          render DaisyUI::Tabs.new(:border, :md) { |tabs|
            tabs.tab "MD"
            tabs.tab "Tabs", :active
            tabs.tab "Size"
          }

          render DaisyUI::Tabs.new(:border, :lg) { |tabs|
            tabs.tab "LG"
            tabs.tab "Tabs", :active
            tabs.tab "Size"
          }
        end
      end
    end
  end
end
