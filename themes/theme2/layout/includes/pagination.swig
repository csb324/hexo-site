
<nav class="pagination">
  {% if page.prev_link %}
    <a href="{{ url_for(page.prev_link) }}" class="pagination__link pagination__link--prev"><i class="fa fa-chevron-left"></i> Next</a>
  {% elif page.prev && page.prev.path %}
    <a href="{{ url_for(page.prev.path) }}" class="pagination__link pagination__link--prev"><i class="fa fa-chevron-left"></i> Next</a>
  {% endif %}

  {% if page.current && page.total %}
    <span class="pagination__page-number">
      Page {{ page.current }} of {{ page.total }}
    </span>
  {% endif %}

  {% if page.next_link %}
    <a href="{{ url_for(page.next_link) }}" class="pagination__link pagination__link--next">Prev <i class="fa fa-chevron-right"></i></a>
  {% elif page.next && page.next.path %}
    <a href="{{ url_for(page.next.path) }}" class="pagination__link pagination__link--next">Prev <i class="fa fa-chevron-right"></i></a>
  {% endif %}
  <div class="clearfix"></div>
</nav>
