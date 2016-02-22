module Mumukit::ContentType::Plain
  extend Mumukit::ContentType::BaseContentType

  def self.title(title)
    "#{title}:"
  end

  def self.code(code)
    "\n-----\n#{code}\n-----\n\n"
  end

  def self.to_html(content)
    "<pre>#{ERB::Util.html_escape content}</pre>".html_safe
  end

  def self.name
    'plain'
  end
end