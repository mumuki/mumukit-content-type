module Mumukit::ContentType::Html
  extend Mumukit::ContentType::BaseContentType

  def self.title(title)
    "<strong>#{title}</strong>"
  end

  def self.code(code)
    "<pre>#{code}</pre>"
  end

  def self.htmlize(content, _options)
    content
  end

  def self.name
    'html'
  end

  def self.enumerate(items)
    add_list_tags(items) unless items.empty?
    items.join("\n")
  end

  private

  def self.add_list_tags(items)
    items.map! { |it| "<li>#{it}</li>" }
    items.prepend '<ul>'
    items.append '</ul>'
  end
end
