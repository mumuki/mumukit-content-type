module Mumukit::ContentType::Html
  extend Mumukit::ContentType::BaseContentType

  def self.title(title)
    "<strong>#{title}</strong>"
  end

  def self.code(code)
    "<pre>#{code}</pre>"
  end

  def self.htmlize(content)
    content
  end

  def self.name
    'html'
  end
end