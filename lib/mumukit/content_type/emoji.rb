#
# Notice: This file is based on https://github.com/elm-city-craftworks/md_emoji, created by
# Jordan Byron and licensed using a MIT license
#

module Mumukit::ContentType::Emoji
  EMOJI = JSON.parse File.read("#{__dir__}/../json/emojis.json")
end

module Mumukit::ContentType::Emoji
  class Render < Redcarpet::Render::HTML
    def initialize(options={})
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
      text.gsub(/:[a-z0-9_]+:/) do |emoji_s|
        emoji_shortname = emoji_s.gsub(':', '')
        puts (emoji_shortname)
        puts (Mumukit::ContentType::Emoji::EMOJI.key? emoji_shortname)

        if Mumukit::ContentType::Emoji::EMOJI.key?(emoji_shortname)
          emoji = Mumukit::ContentType::Emoji::EMOJI[emoji_shortname]

          %{<i class="mu-emoji #{sprite_class emoji} #{code_point_class emoji}" } +
              %{title="#{emoji_shortname}" alt="#{emoji_shortname}" height="24" width="24"></i>}
        else
          emoji_shortname
        end
      end
    end

    private

    def sprite_class(emoji)
      emoji['sc'] || emoji['ca']
    end

    def code_point_class(emoji)
      "_#{emoji['co']}"
    end

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
