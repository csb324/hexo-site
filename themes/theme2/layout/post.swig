{% extends 'includes/layout.swig' %}

{% block body %}

	{% include 'components/statusbar.swig' with {item: page} %}

	<div class="container">
	  <article class="post" id="post">
	    {% autoescape false %}{{ page.content }}{% endautoescape %}
	  </article>
	  {% include 'includes/pagination.swig' %}
  </div>

{% endblock %}