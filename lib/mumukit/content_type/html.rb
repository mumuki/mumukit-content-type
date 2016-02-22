module Mumukit::ContentType::Html
  extend Mumukit::ContentType::BaseContentType

  def self.title(title)
    "<strong>#{title}</strong>"
  end

  def self.code(code)
    "<pre>#{code}</pre>"
  end

  def self.to_html(content)
    content.html_safe if content
  end

  def self.name
    'html'
  end
end