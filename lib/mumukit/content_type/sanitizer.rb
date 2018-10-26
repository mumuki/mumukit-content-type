require 'sanitize'

module Mumukit::ContentType::Sanitizer
  class << self
    class_attribute :allowed_elements, :allowed_attributes

    self.allowed_elements = []
    self.allowed_attributes = {
        'a' => Sanitize::Config::RELAXED[:attributes]['a'] + ['target']
    }

    def sanitize(html)
      Sanitize.fragment(html, sanitization_settings)
    end

    def sanitization_settings
      Sanitize::Config.merge(Sanitize::Config::RELAXED, custom_sanitization_settings)
    end

    def custom_sanitization_settings
      {
          elements: Sanitize::Config::RELAXED[:elements] + allowed_elements,
          attributes: allowed_attributes
      }
    end
  end
end