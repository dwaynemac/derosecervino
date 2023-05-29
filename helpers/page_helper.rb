module PageHelper

  def js_redirect_to(url)
    <<-HTML
      <script type="text/javascript">
        window.location.href = "#{url}";
      </script>
    HTML
  end

  def link_to_page(page)
    link_to page.data.fetch("title", page.request_path), page.request_path
  end

  def link_to_if_current(text, page, active_class: "active")
    if page == current_page
      link_to text, page.request_path, class: active_class
    else
      link_to text, page.request_path
    end
  end
end
