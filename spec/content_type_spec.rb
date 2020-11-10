require_relative './spec_helper'

describe Mumukit::ContentType do

  before { Mumukit::ContentType::Sanitizer.should_sanitize = true }

  it { expect(Mumukit::ContentType.parse(:plain)).to eq Mumukit::ContentType::Plain }
  it { expect(Mumukit::ContentType.parse(:markdown)).to eq Mumukit::ContentType::Markdown }
  it { expect(Mumukit::ContentType.parse(:html)).to eq Mumukit::ContentType::Html }

  it { expect(Mumukit::ContentType::Plain.to_s).to eq 'plain' }
  it { expect(Mumukit::ContentType::Markdown.to_s).to eq 'markdown' }
  it { expect(Mumukit::ContentType::Html.to_s).to eq 'html' }

  it { expect(Mumukit::ContentType::Plain.as_json).to eq 'plain' }
  it { expect(Mumukit::ContentType::Markdown.as_json).to eq 'markdown' }
  it { expect(Mumukit::ContentType::Html.as_json).to eq 'html' }

  let(:exception) { OpenStruct.new(message: 'foo', backtrace: ['l1', 'l2']) }

  describe 'html' do
    let(:html) { Mumukit::ContentType.for(:html) }
    it { expect(html.to_html('<h1>foo</h1>').html_safe?).to be true }
    it { expect(html.to_html('<pre>foo</pre>')).to eq '<pre>foo</pre>' }
    it { expect(html.to_html('<script></script>')).to eq '' }

    context '.enumerate' do
      it { expect(html.enumerate(['Should do this', 'Should do that'])).to eq "<ul>\n<li>Should do this</li>\n<li>Should do that</li>\n</ul>" }
      it { expect(html.enumerate([])).to eq '' }
    end
  end

  describe 'markdown' do
    let(:markdown) { Mumukit::ContentType.for(:markdown) }
    it { expect(markdown.to_html('#foo').html_safe?).to be true }
    it { expect(markdown.to_html(':stuck_out_tongue:')).to eq "<p><i class=\"mu-emoji people _1f61b\" title=\":stuck_out_tongue:\"></i></p>\n" }
    it { expect(markdown.to_html("```ruby\n@x = 1\n```\n")).to include '<span class="vi">@x</span>' }
    it { expect(markdown.to_html("```gobstones\nprogram {}\n```\n")).to include '<span class="kr">program</span>' }

    it { expect(markdown.to_html("\n| f | x |\n|---|---|\n| x | y |\n")).to eq "<table class=\"table\"><thead>\n<tr>\n<th>f</th>\n<th>x</th>\n</tr>\n</thead><tbody>\n<tr>\n<td>x</td>\n<td>y</td>\n</tr>\n</tbody></table>\n" }
    it { expect(markdown.to_html('ム')).to eq "<p><i class=\"text-primary da da-mumuki\"></i></p>\n" }
    it { expect(markdown.to_html("ム foo\nム bar\n")).to_not include "ム" }
    it { expect(markdown.to_html('[this is a link somewhere with a title](http://www.somewhere.com "title here")')).to eq "<p><a title=\"title here\" href=\"http://www.somewhere.com\" target=\"_blank\">this is a link somewhere with a title</a></p>\n" }
    it { expect(markdown.to_html('<script></script>')).to eq "\n" }

    it { expect(markdown.to_html('hello `code`')).to eq "<p>hello <code>code</code></p>\n" }
    it { expect(markdown.to_html('hello `code`', one_liner: true)).to eq "hello <code>code</code>" }

    context '.enumerate' do
      it { expect(markdown.enumerate(['Should do this', 'Should do that'])).to eq "* Should do this\n* Should do that" }
      it { expect(markdown.enumerate([])).to eq '' }
    end
  end

  describe 'highlighted_code' do
    it { expect(Mumukit::ContentType::Markdown.highlighted_code('haskell', 'foo a = a = 1')).to eq "```haskell\nfoo a = a = 1\n```" }
    it { expect(Mumukit::ContentType::Markdown.highlighted_code('haskell', "foo a = a = 1\n")).to eq "```haskell\nfoo a = a = 1\n```" }
  end

  describe 'plain' do
    let(:plain) { Mumukit::ContentType.for(:plain) }
    it { expect(plain.to_html('foo').html_safe?).to be true }
    it { expect(plain.to_html('foo')).to eq '<pre>foo</pre>' }
    it { expect(plain.to_html('x < 5 && x > 0')).to eq '<pre>x &lt; 5 &amp;&amp; x &gt; 0</pre>' }
    it { expect(plain.to_html('<script></script>')).to eq '<pre>&lt;script&gt;&lt;/script&gt;</pre>' }

    context '.enumerate' do
      it { expect(plain.enumerate(['Should do this', 'Should do that'])).to eq "Should do this\nShould do that" }
      it { expect(plain.enumerate([])).to eq '' }
    end
  end


  it { expect(Mumukit::ContentType::Plain.format_exception(exception)).to eq(
                                                                              %q{foo:

-----
l1
l2
-----

}) }

  it { expect(Mumukit::ContentType::Markdown.format_exception(exception)).to eq(
                                                                                 %q{**foo**

```
l1
l2
```

}) }
  it { expect(Mumukit::ContentType::Html.format_exception(exception)).to eq "<strong>foo</strong>\n<pre>l1\nl2</pre>" }

end
