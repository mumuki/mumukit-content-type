require_relative './spec_helper'

describe Mumukit::ContentType do

  it { expect(Mumukit::ContentType.parse(:plain)).to eq Mumukit::ContentType::Plain }
  it { expect(Mumukit::ContentType.parse(:markdown)).to eq Mumukit::ContentType::Markdown }
  it { expect(Mumukit::ContentType.parse(:html)).to eq Mumukit::ContentType::Html }

  let(:exception) { OpenStruct.new(message: 'foo', backtrace: ['l1', 'l2'])}

  describe 'html' do
    let(:html) { Mumukit::ContentType.for(:html) }
    it { expect(html.to_html('<h1>foo</h1>').html_safe?).to be true }
    it { expect(html.to_html('<pre>foo</pre>')).to eq '<pre>foo</pre>' }
  end

  describe 'markdown' do
    let(:markdown) { Mumukit::ContentType.for(:markdown) }
    it { expect(markdown.to_html('#foo').html_safe?).to be true }
    it { expect(markdown.to_html("\n| f | x |\n|---|---|\n| x | y |\n")).to eq "<table class=\"table\"><thead>\n<tr>\n<th>f</th>\n<th>x</th>\n</tr>\n</thead><tbody>\n<tr>\n<td>x</td>\n<td>y</td>\n</tr>\n</tbody></table>\n"}

  end

  describe 'plain' do
    let(:plain) { Mumukit::ContentType.for(:plain) }
    it { expect(plain.to_html('foo').html_safe?).to be true }
    it { expect(plain.to_html('foo')).to eq '<pre>foo</pre>' }
    it { expect(plain.to_html('x < 5 && x > 0')).to eq '<pre>x &lt; 5 &amp;&amp; x &gt; 0</pre>' }
  end


  it { expect(Mumukit::ContentType::Plain.format_exception(exception)).to eq(
%q{foo:

-----
l1
l2
-----

})}

  it { expect(Mumukit::ContentType::Markdown.format_exception(exception)).to eq(
 %q{**foo**

```
l1
l2
```

})}
  it { expect(Mumukit::ContentType::Html.format_exception(exception)).to eq "<strong>foo</strong>\n<pre>l1\nl2</pre>" }

end
