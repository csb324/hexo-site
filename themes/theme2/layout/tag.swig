{% extends 'includes/layout.swig' %}

{% block body %}
	<div class="container">
		
	  <div id="tag">
	    <h1>{{ page.tag }}</h1>
	    {% for postItem in page.posts.toArray() %}
	      <div class="tag-item">
	        {% include 'components/post-preview.swig' with {item: postItem} %}
	      </div>
	    {% endfor %}
	  </div>

	  {% include 'includes/pagination.swig' %}
	</div>

{% endblock %}

