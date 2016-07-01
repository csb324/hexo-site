{% extends 'includes/layout.swig' %}

{% block body %}
	<div class="container">
		
	  <div id="category">
	    <h1>{{ page.category }}</h1>
	    {% for postItem in page.posts.toArray() %}
	      <div class="category-item">
	        {% include 'components/post-preview.swig' with {item: postItem} %}
	      </div>
	    {% endfor %}
	  </div>

	  {% include 'includes/pagination.swig' %}
	</div>

{% endblock %}
