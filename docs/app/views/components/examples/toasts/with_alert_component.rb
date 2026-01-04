# frozen_string_literal: true

module Examples
  module Toasts
    class WithAlertComponent < Base
      def title
        "Toast with different alert types"
      end

      def example
        div class: "relative h-48 w-full" do
          Toast do
            Alert :info do
              span do
                "New mail arrived."
              end
            end

            Alert :success do
              span do
                "Message sent successfully."
              end
            end
          end
        end
      end
    end
  end
end
