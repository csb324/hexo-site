{% extends 'includes/layout.swig' %}

{% block body %}

	<div class="container">
	  <article id="post">
	    {% autoescape false %}{{ page.content }}{% endautoescape %}
	  </article>

	  {% include 'includes/pagination.swig' %}
  </div>
  
{% endblock %}
