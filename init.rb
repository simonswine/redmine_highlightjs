require 'redmine'
require 'coderay_patch'

Redmine::Plugin.register :redmine_highlightjs do
  name 'Redmine highlight.js plugin'
  author 'Christian Simon'
  description 'This is a syntax highlighting plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/simonswine/redmine_highlightjs'
  author_url 'http://www.swine.de'
end

# Add js and css for redmine_highlight.js
class RedmineHighlightjsBase < Redmine::Hook::ViewListener
  render_on :view_layouts_base_html_head, :partial => 'highlightjs'
end
