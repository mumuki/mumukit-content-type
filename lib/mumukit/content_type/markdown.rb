require 'rouge'
require 'redcarpet'
require 'rouge/plugins/redcarpet'

module Mumukit::ContentType::Markdown
  extend Mumukit::ContentType::BaseContentType

  class HTML < Mumukit::ContentType::Emoji::Render
    include Rouge::Plugins::Redcarpet

    def table(header, body)
      "<table class=\"table\"><thead>\n#{header}</thead><tbody>\n#{body}</tbody></table>\n"
    end

    def link(link, title, content)
      "<a title=\"#{title}\" href=\"#{link}\" target=\"_blank\">#{content}</a>"
    end
  end

  class OneLinerHTML < HTML
    def paragraph(text)
      text
    end
  end

  def self.new_markdown(renderer)
    Redcarpet::Markdown.new(renderer, autolink: true, fenced_code_blocks: true, no_intra_emphasis: true, tables: true)
  end

  @@markdown = new_markdown HTML
  @@one_liner_markdown = new_markdown OneLinerHTML

  def self.title(title)
    "**#{title}**"
  end

  def self.code(code)
    "\n```\n#{code}\n```\n\n"
  end

  def self.highlighted_code(language, code)
    "```#{language}\n#{(code.ends_with? "\n") ? code : "#{code}\n"}```"
  end

  def self.inline_code(code)
    "`#{code}`"
  end

  def self.render_replacing_mu_logo(content, renderer)
    mumuki_logo = '<i class="text-primary da da-mumuki"></i>'
    renderer
        .render(content)
        .gsub('<span class="err">ム</span>', mumuki_logo)
        .gsub('ム', mumuki_logo)
  end

  def self.htmlize(content, options)
    render_replacing_mu_logo(content, renderer_for(options)) if content
  end

  def self.renderer_for(options)
    options[:one_liner] ? @@one_liner_markdown : @@markdown
  end

  def self.name
    'markdown'
  end
end
