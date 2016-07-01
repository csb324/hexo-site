{% extends 'includes/layout.swig' %}

{% block body %}
  <article id="post">
    {% autoescape false %}{{ page.content }}{% endautoescape %}
  </article>

  {% include 'includes/pagination.swig' %}
{% endblock %}
