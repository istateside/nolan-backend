require 'redcarpet'

module ApplicationHelper
  def render_markdown(str)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true, disable_indented_code_blocks: true)
    markdown.render(str).html_safe
  end
end
