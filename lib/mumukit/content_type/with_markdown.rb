class Module
  def markdown_on(*selectors, options: {})
    selectors.each { |selector| _define_markdown_on(selector, options) }
  end

  private

  def _define_markdown_on(selector, options)
    define_method("#{selector}_html".to_sym) do |*args|
      Mumukit::ContentType::Markdown.to_html self.send(selector, *args), options
    end
  end
end
