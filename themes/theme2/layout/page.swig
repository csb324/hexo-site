{% extends 'includes/layout.swig' %}

{% block body %}
	<div class="container">	
	  <article id="page">
	    <h1>{{ page.title }}</h1>
	    {% autoescape false %}{{page.content }}{% endautoescape %}
	  </article>

	  {% include 'includes/pagination.swig' %}
	</div>

{% endblock %}
