# frozen_string_literal: true

module Examples
  module Calendars
    class BasicComponent < Base
      def title
        "Calendar (Cally)"
      end

      def example
        Calendar type: :cally
      end
    end
  end
end
