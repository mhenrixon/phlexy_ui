module Examples
  module Stats
    class WithCustomColorsComponent < Base
      def title
        "With custom colors and button"
      end

      def example
        Stat class: "bg-primary text-primary-content" do |stat|
          stat.item do
            stat.title do
              "Account balance"
            end

            stat.value do
              "$89,400"
            end

            stat.actions do
              Button :sm, :success do
                "Add funds"
              end
            end
          end

          stat.item do
            stat.title do
              "Current balance"
            end

            stat.value do
              "$89,400"
            end

            stat.actions do
              Button :sm do
                "Withdrawal"
              end
              Button :sm do
                "Deposit"
              end
            end
          end
        end
      end
    end
  end
end
