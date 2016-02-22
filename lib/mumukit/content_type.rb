require 'active_support/all'

module Mumukit
  module ContentType
    module BaseContentType
      def format_exception(e)
        "#{title e.message}\n#{code e.backtrace.join("\n")}"
      end
    end

    def self.parse(s)
      Kernel.const_get "Mumukit::ContentType::#{s.to_s.titlecase}"
    rescue
      raise "unknown content_type #{s}"
    end

    def self.for(type)
      parse(type)
    end
  end
end

require_relative './content_type/markdown'
require_relative './content_type/with_markdown'
require_relative './content_type/plain'
require_relative './content_type/html'