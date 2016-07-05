{% extends 'includes/layout.swig' %}
{% block header %}
	{% include 'components/nav.swig' with {showTitle: false} %}
	{% include 'components/hero.swig' with {title: config.title, subtitle: config.subtitle, large: true} %}
{% endblock %}

{% block body %}
  {% include 'includes/recent-projects.swig' %}	
  {% include 'includes/blog-posts.swig' %}
{% endblock %}