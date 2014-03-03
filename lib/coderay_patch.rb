require_dependency 'redmine/syntax_highlighting'

module Redmine
  module SyntaxHighlighting
    module CodeRay

      class << self
        def highlight_by_filename(text, filename)
          language ? highlight_by_language(text, language, false) : ERB::Util.h(text)
        end

        def highlight_by_language(text, language, with_lineno=true)
          text
        end
      end
    end
  end
end
