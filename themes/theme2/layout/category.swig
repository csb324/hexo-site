{% extends 'includes/layout.swig' %}


{% block header %}    
  {# By default, include the hero (regular size) with page title and headline #}
  {% include 'components/nav.swig' with {showTitle: true} %}
  {% include 'components/hero.swig' with {title: "Archive", subtitle: "pages in the category: " + page.category} %}    
{% endblock %}


{% block body %}
	<div class="container">
		
	  <div id="category">
	    {% for postItem in page.posts.toArray() %}
	      <div class="category-item">
	        {% include 'components/post-preview.swig' with {item: postItem} %}
	      </div>
	    {% endfor %}
	  </div>

	  {% include 'includes/pagination.swig' %}
	</div>

{% endblock %}
