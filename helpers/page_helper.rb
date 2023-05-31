module PageHelper

  def base_url
    "https://www.derosecervino.com.ar"
  end

  def page_title
    [current_page.data.fetch("title",nil),"DeROSE Method Sede Cerviño - en palermo chico"].compact.join(" - ")
  end

  def js_redirect_to(url)
    <<-HTML
      <noscript>
        Navegador no soportado. Haga click <a href="#{url}">aquí</a> para continuar: <a href="#{url}">#{url}</a>.
      </noscript>
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


  def cta_link_to(text, path, options= {})
    options[:class] ||= ""
    options[:class] << " btn btn-xl btn-primary btn-cta"
    link_to text, path, options
  end

  def link_to_if_current(text, page, active_class: "active")
    if page == current_page
      link_to text, page.request_path, class: active_class
    else
      link_to text, page.request_path
    end
  end

  # Es la url de la web global legible por humanos
  def global_web
    "www.derosemethod.org"
  end

  # Es la url de la web global para el link
  def global_web_url
    "https://www.derosemethod.org/es"
  end

  def whatsapp_url
    "https://api.whatsapp.com/send/?phone=5491131035453&text&type=phone_number&app_absent=0"
  end

  def instagram_url
    "https://www.instagram.com/derosecervino/"
  end

  def learn_url
    "https://learn.derose.app"
  end
end
