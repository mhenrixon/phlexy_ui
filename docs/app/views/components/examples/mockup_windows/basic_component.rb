module Examples
  module MockupWindows
    class BasicComponent < Base
      def title
        "Mockup window"
      end

      def example
        MockupWindow class: "bg-base-300" do
          div class: "bg-base-200 flex justify-center px-4 py-16" do
            "Hello!"
          end
        end
      end
    end
  end
end
