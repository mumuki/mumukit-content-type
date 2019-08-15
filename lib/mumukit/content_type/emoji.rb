require 'mumuki/emojis'

module Mumukit::ContentType::Emoji
  class Render < Redcarpet::Render::HTML
    def initialize(options = {})
      @options = options.merge(:no_intra_emphasis => true)
      super @options
    end

    def paragraph(text)
      text.gsub!("\n", "<br>\n") if @options[:hard_wrap]

      "<p>#{replace_emoji(text)}</p>\n"
    end

    def list_item(text, list_type)
      "<li>#{replace_emoji(text)}</li>"
    end

    # Replaces valid emoji characters, ie :smile:, with img tags
    #
    # Valid emoji charaters are listed in +Mumukit::ContentType::Emoji::EMOJI+
    def replace_emoji(text)
      emojis = Mumuki::Emojis::EMOJIS
      short_names = emojis.keys.join('|').gsub('+', '\+')
      text.gsub(/:(#{short_names}):/) do |short_name|
        short_code = short_name.gsub(':', '')
        if emojis.include?(short_code)
          emoji = emojis[short_code]
          %{<i class="mu-emoji #{emoji['ca']} _#{emoji['co']}" title="#{short_name}"></i>}
        else
          short_code
        end
      end
    end

    private

    # Returns +true+ if emoji are present in +text+, otherwise returns +false+
    def include_emoji?(text)
      text && text[/:\S+:/]
    end
  end
end

module Mumukit::ContentType::Emoji
  class Engine < ::Rails::Engine
  end if defined? ::Rails::Engine
end
