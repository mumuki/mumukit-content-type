require 'mumukit/core'
require 'redcarpet'

module Mumukit
  module ContentType
    module BaseContentType
      def format_exception(e)
        "#{title e.message}\n#{code e.backtrace.join("\n")}"
      end

      def to_html(content, options={})
        content_html = htmlize content, options
        content_html = Mumukit::ContentType::Sanitizer.sanitize(content_html) unless options[:skip_sanitization]
        content_html&.html_safe
      end

      def to_s
        name
      end

      def as_json(_options={})
        name
      end
    end

    def self.parse(s)
      "Mumukit::ContentType::#{s.to_s.titlecase}".constantize
    rescue
      raise "unknown content_type #{s}"
    end

    def self.for(type)
      parse(type)
    end
  end
end

require_relative './content_type/sanitizer'
require_relative './content_type/emoji'
require_relative './content_type/markdown'
require_relative './content_type/with_markdown'
require_relative './content_type/plain'
require_relative './content_type/html'
require_relative './content_type/gobstones'
require_relative './content_type/python3'
