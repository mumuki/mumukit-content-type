require 'md_emoji'
require 'rouge'
require 'redcarpet'
require 'rouge/plugins/redcarpet'

module Mumukit::ContentType::Markdown
  extend Mumukit::ContentType::BaseContentType

  def self.title(title)
    "**#{title}**"
  end

  def self.code(code)
    "\n```\n#{code}\n```\n\n"
  end

  class HTML < MdEmoji::Render
    include Rouge::Plugins::Redcarpet

    def table(header, body)
      "<table class=\"table\"><thead>\n#{header}</thead><tbody>\n#{body}</tbody></table>\n"
    end
  end

  @@markdown = Redcarpet::Markdown.new(HTML, autolink: true, fenced_code_blocks: true, no_intra_emphasis: true, tables: true)

  def self.to_html(content)
    @@markdown.render(content).html_safe if content
  end

  def self.name
    'markdown'
  end
end