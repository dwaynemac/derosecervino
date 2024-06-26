module FaqHelper

  def que_es_derose_method
    <<-A
<p>
  #{derose_brand} Method te ofrece herramientas para que desarrolles las habilidades y comportamientos necesarios para vivir bien y prosperar en un mundo de exigencias y desafíos crecientes.
</p>
<p>
  En nuestra escuela empezás aprendiendo sobre todo técnicas respiratorias y corporales para desarrollar más fuerza y tono muscular, flexibilidad y concentración.
<br>
  Al ir avanzando podés ir sumándote a charlas, cursos y otras actividades que abarcan el resto del Método #{derose_brand}: hábitos, alimentación, comportamiento, relaciones humanas y más.
</p>
<p>
  Para más detalles te recomendamos visitar el sitio global oficial: #{link_to("#{derose_brand}Method.org".html_safe, "https://derosemethod.org/es", target: "_blank").html_safe}
</p>
  A
  end

  def derose_es_yoga
    <<-A
  <p>
   <b>Incluye pero es mucho más que Yôga.</b>
  </p>
  <p>
    En la década del 60 el Profesor DeRose comenzó su carrera enseñando Yôga. Sistematizó el SwáSthya Yôga y durante años trabajó enfocado en el Yôga escribiendo libros y viajando por el mundo dando cursos. Es normal entonces que su nombre haya quedado asociado al Yôga.
  </p>
  <p>
    Precisamos aclarar siempre: #{derose_brand} Method es otra cosa.
  </p>
  <p>
    Hace más de 15 años que DeRose creó el #{derose_brand} Method para ampliar su trabajo enfocándose en comportamiento y estilo de vida.
  </p>
  <p>
    En #{derose_brand} Method vas a encontrar:
  </p>
  <ul>
    <li> conceptos sobre hábitos cotidianos y estilo de vida </li>
    <li> recomendaciones de alimentación </li>
    <li> herramientas para la administración del estrés </li>
    <li> conceptos para mejorar tus relaciones humanas </li>
    <li> actividades sociales de integración </li>
    <li> viajes y salidas culturales </li>
    <li> filosofía hindú </li>
    <li> entrenamientos de fuerza y resistencia muscular </li>
    <li> desarrollo de flexibilidad </li>
    <li> mejora de tu capacidad respiratoria </li>
    <li> trabajo de concentración y meditación </li>
  </ul>
<p>
  Conocé más sobre el Método #{derose_brand} en el sitio global oficial: #{link_to("#{derose_brand}Method.org".html_safe, "https://derosemethod.org/es", target: "_blank").html_safe}
</p>
A
  end
end
