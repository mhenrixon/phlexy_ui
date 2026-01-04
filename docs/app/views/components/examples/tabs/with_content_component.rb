# frozen_string_literal: true

module Examples
  module Tabs
    class WithContentComponent < Base
      def title
        "Tabs with content"
      end

      def example
        render DaisyUI::Tabs.new(:lift, id: "my-tabs") { |tabs|
          tabs.tab "Tab 1" do |t|
            t.content class: "bg-base-100 border-base-300 p-6" do
              "Tab content 1"
            end
          end
          tabs.tab "Tab 2", :active do |t|
            t.content class: "bg-base-100 border-base-300 p-6" do
              "Tab content 2"
            end
          end
          tabs.tab "Tab 3" do |t|
            t.content class: "bg-base-100 border-base-300 p-6" do
              "Tab content 3"
            end
          end
        }
      end
    end
  end
end
