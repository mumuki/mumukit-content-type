require 'sanitize'

module Mumukit::ContentType::Sanitizer
  class << self
    class_attribute :should_sanitize, :allowed_elements, :allowed_attributes, :transformers

    self.should_sanitize = false
    self.allowed_elements = []
    self.allowed_attributes = {
        'a' => Sanitize::Config::RELAXED[:attributes]['a'] + ['target']
    }

    self.transformers = []

    def sanitize(html)
      return html unless should_sanitize?

      Sanitize.fragment(html, sanitization_settings)
    end

    def sanitization_settings
      Sanitize::Config.merge(Sanitize::Config::RELAXED, custom_sanitization_settings)
    end


    def custom_sanitization_settings
      {
          elements: Sanitize::Config::RELAXED[:elements] + allowed_elements,
          attributes: allowed_attributes,
          transformers: transformers
      }
    end
  end
end
