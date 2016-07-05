{% extends 'includes/layout.swig' %}

{% block body %}
	<div class="container">	
	  <article id="page">
	    {% autoescape false %}{{page.content }}{% endautoescape %}
	  </article>

	  {% include 'includes/pagination.swig' %}
	</div>
{% endblock %}
