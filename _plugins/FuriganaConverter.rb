module Jekyll
  class FuriganaConveter < Converter
    safe true
    priority :low

    def matches(ext)
      ext =~ /^\.markdown$/i
    end

    def output_ext(ext)
      ".html"
    end

    def convert(content)
      content.gsub!(/\{(.+?)\}\((.+?)\)/, "<ruby><rb>\\1</rb><rp>(</rp><rt>\\2</rt><rp>)</rp></ruby>")
    end
  end
end
