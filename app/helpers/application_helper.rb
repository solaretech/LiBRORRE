module ApplicationHelper
  def daytime_localize(daytime)
    daytime.strftime("%Y年%m月%d日 %H:%M:%S")
  end

  def markdown_convertion(text)
    options = {
      filter_html:     true,
      hard_wrap:       true,
      space_after_headers: true,
    }
    extensions = {
      autolink:           true,
      no_intra_emphasis:  true,
      fenced_code_blocks: true,
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(text).html_safe
  end

end
