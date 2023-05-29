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

  def nav_link_to(text, path, options= {})
    if current_page.request_path == path
      options[:class] ||= ""
      options[:class] << " active"
    end
    link_to text, path, options
  end

  # Es la url de la web global legible por humanos
  def global_web
    "www.derosemethod.org"
  end

  # Es la url de la web global para el link
  def global_web_url
    "https://www.derosemethod.org/es"
  end

  def cta_link_to(text, path, options= {})
    options[:class] ||= ""
    options[:class] << " btn btn-lg btn-primary btn-cta"
    link_to text, path, options
  end

  def link_to_if_current(text, page, active_class: "active")
    if page == current_page
      link_to text, page.request_path, class: active_class
    else
      link_to text, page.request_path
    end
  end
end
