require 'redcarpet'

module ApplicationHelper
  def render_markdown(str)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    markdown.render(str).html_safe
  end
end
