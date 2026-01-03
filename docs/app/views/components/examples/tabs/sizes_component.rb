module Examples
  module Tabs
    class SizesComponent < Base
      def title
        "Tab sizes"
      end

      def example
        div class: "flex flex-col gap-4" do
          DaisyUI::Tabs.new :border, :xs do |tabs|
            tabs.tab "XS"
            tabs.tab "Tabs", :active
            tabs.tab "Size"
          end

          DaisyUI::Tabs.new :border, :sm do |tabs|
            tabs.tab "SM"
            tabs.tab "Tabs", :active
            tabs.tab "Size"
          end

          DaisyUI::Tabs.new :border, :md do |tabs|
            tabs.tab "MD"
            tabs.tab "Tabs", :active
            tabs.tab "Size"
          end

          DaisyUI::Tabs.new :border, :lg do |tabs|
            tabs.tab "LG"
            tabs.tab "Tabs", :active
            tabs.tab "Size"
          end
        end
      end
    end
  end
end
