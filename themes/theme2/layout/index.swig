{% extends 'includes/layout.swig' %}

{% block header %}
	{% include 'components/nav.swig' with {showTitle: false} %}
	{% include 'components/hero.swig' with {title: config.title, subtitle: config.subtitle, large: true} %}
{% endblock %}


{% block body %}
	<div class="container">

	  {% include 'includes/recent-posts.swig' %}
	  <img src="/images/flowers.jpg" alt="flowers">
	  {% include 'includes/pagination.swig' %}

	</div>

{% endblock %}
