# frozen_string_literal: true

module Examples
  module Calendars
    class WithPikadayComponent < Base
      def title
        "Calendar (Pikaday)"
      end

      def example
        Calendar type: :pikaday
      end
    end
  end
end
