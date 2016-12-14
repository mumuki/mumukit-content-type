require 'md_emoji'
require 'rouge'
require 'redcarpet'
require 'rouge/plugins/redcarpet'

module Mumukit::ContentType::Markdown
  extend Mumukit::ContentType::BaseContentType

  class HTML < MdEmoji::Render
    include Rouge::Plugins::Redcarpet

    def table(header, body)
      "<table class=\"table\"><thead>\n#{header}</thead><tbody>\n#{body}</tbody></table>\n"
    end
  end

  @@markdown = Redcarpet::Markdown.new(HTML, autolink: true, fenced_code_blocks: true, no_intra_emphasis: true, tables: true)

  def self.title(title)
    "**#{title}**"
  end

  def self.code(code)
    "\n```\n#{code}\n```\n\n"
  end

  def self.highlighted_code(language, code)
    "```#{language}\n#{code}```"
  end

  def self.inline_code(code)
    "`#{code}`"
  end

  def self.replace_mu_logo(content)
    mumuki_logo = '<i class="text-primary da da-mumuki"></i>'
    @@markdown
        .render(content)
        .gsub('<span class="err">ム</span>', mumuki_logo)
        .gsub('ム', mumuki_logo)
  end

  def self.to_html(content)
    replace_mu_logo(content).html_safe if content
  end

  def self.name
    'markdown'
  end
end