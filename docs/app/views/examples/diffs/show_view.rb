# frozen_string_literal: true

module Examples
  module Diffs
    class ShowView < BaseView
      def view_template
        title do
          "Diff"
        end

        render_examples [
          BasicComponent,
          TextDiffComponent,
        ]
      end
    end
  end
end
