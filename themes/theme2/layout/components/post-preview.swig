{% if item.link %}
  {% set href = url_for(item.link) %}
{% else %}
  {% set href = url_for(item.path) %}
{% endif %}

  <a href="{{ href }}">
    {{ item.title || 'No Title' }}
  </a>

<time datetime="{{ date_xml(item.date) }}">
  {{ date(item.date) }}
</time>