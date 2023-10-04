module PageHelper

  def derose_brand
    "<span class='derose_brand'>De<span class='smallcaps'>Rose</span></span>".html_safe
  end

  def base_url
    "https://www.derosecervino.com.ar"
  end

  def page_title
    [current_page.data.fetch("title",nil),"DeROSE Method Sede Cerviño - en palermo chico"].compact.join(" - ")
  end

  def js_redirect
    url = current_page.data["redirect_to"]
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
    options[:class] << " btn btn-xl btn-cta"
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
    "www.#{derose_brand}Method.org".html_safe
  end

  # Es la url de la web global para el link
  def global_web_url
    "https://www.derosemethod.org/es"
  end

  def learn_host
    #if Rails.env.development?
      #"http://localhost:3031"
    #else
      "https://learn.derose.app"
    #end
  end

  # Uno random de entre todos los archivos que hay en
  # assets/images/testimonials
  # ATENCIÓN: Una vez compilado el sitio, esto no se llama más
  def random_testimonial_path
    testimonials = Dir.glob("assets/images/testimonials/*")
    testimonials.sample.gsub("assets/images/","")
  end

  def all_testimonial_paths
    testimonials = Dir.glob("assets/images/testimonials/*")
    testimonials.map{|t| t.gsub("assets/images/","")}
  end
end
