module Examples
  module Footers
    class BasicComponent < Base
      def title
        "Footer"
      end

      def example
        Footer class: "bg-neutral text-neutral-content p-10" do
          nav do
            a(class: "link link-hover") { "About us" }
            a(class: "link link-hover") { "Contact" }
            a(class: "link link-hover") { "Jobs" }
            a(class: "link link-hover") { "Press kit" }
          end
          nav do
            a(class: "link link-hover") { "Terms of use" }
            a(class: "link link-hover") { "Privacy policy" }
            a(class: "link link-hover") { "Cookie policy" }
          end
        end
      end
    end
  end
end
