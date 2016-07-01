{% extends 'includes/layout.swig' %}

{% block body %}

	<div class="container">
		
	  <article id="post">
	    <h1>{{ page.title }}</h1>

	    <p>{{ page.headline }}</p>
	    {% autoescape false %}{{ page.content }}{% endautoescape %}
	  </article>

	  {% include 'includes/pagination.swig' %}

	</div>

{% endblock %}
