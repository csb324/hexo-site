{% extends 'includes/layout.swig' %}

{% block header %}
	{% include 'components/hero.swig' with {title: config.title, subtitle: config.subtitle, large: true} %}
{% endblock %}


{% block body %}
  {% include 'includes/recent-posts.swig' %}
  {% include 'includes/pagination.swig' %}
{% endblock %}
