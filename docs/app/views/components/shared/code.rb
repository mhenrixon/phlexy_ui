module Shared
  class Code < ApplicationComponent
    HIGHLIGHT_CSS_CLASS = "highlight"
    CODE_LINE_CSS_CLASS = "line-%i"

    def initialize(format, source:, mockup: false, inline: false)
      @source = source
      @format = format
      @mockup = mockup
      @inline = inline

      @theme = Rouge::Themes::Monokai
      @formatter = Rouge::Formatters::HTML.new(@theme)
      unless inline
        @formatter = Rouge::Formatters::HTMLLineTable.new(
          @formatter,
          class: CODE_LINE_CSS_CLASS
        )
      end
      @css = @theme.render(scope: ".#{HIGHLIGHT_CSS_CLASS}")
    end

    def view_template
      render_css

      classes = [
        HIGHLIGHT_CSS_CLASS,
        ("mockup-code" if mockup),
        ("inline-block pl-1 rounded" if inline)
      ]

      div class: classes do
        formatter.format(lexer.lex(source)).html_safe
      end
    end

    private

    attr_reader :source, :format, :mockup, :inline, :formatter, :css

    def lexer
      case format
      when :ruby then Rouge::Lexers::Ruby.new
      when :shell then Rouge::Lexers::Shell.new
      when :javascript then Rouge::Lexers::Javascript.new
      when :html then Rouge::Lexers::HTML.new
      else raise ArgumentError, "Unsupported code format: #{format}"
      end
    end

    def render_css
      style do
        css.html_safe + <<~CSS
          .highlight {
            background-color: #272822;
            overflow-x: auto;
            font-size: 0.75rem;
            line-height: 1.4;
            border-radius: var(--radius-box);
          }

          .highlight .rouge-line-table {
            width: 100%;
            border-collapse: collapse;
          }

          .highlight .rouge-gutter {
            width: 2.5em;
            padding: 0 0.5em 0 0.5em;
            color: rgba(248, 248, 242, 0.4);
            text-align: right;
            vertical-align: top;
            user-select: none;
            border-right: 1px solid rgba(248, 248, 242, 0.1);
          }

          .highlight .rouge-gutter pre {
            padding: 0;
            margin: 0;
            background: transparent;
          }

          .highlight .rouge-code {
            padding-left: 0.75em;
            vertical-align: top;
          }

          .highlight .rouge-code pre {
            padding: 0;
            margin: 0;
            background: transparent;
            white-space: pre-wrap;
            word-break: break-word;
          }

          .highlight.mockup-code {
            padding: 0.75rem;
          }

          .highlight .gi {
            display: inline-block;
          }
        CSS
      end
    end
  end
end
