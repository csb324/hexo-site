{% extends 'includes/layout.swig' %}

{% block header %}    
  {# By default, include the hero (regular size) with page title and headline #}
  {% include 'components/nav.swig' with {showTitle: true} %}
  {% include 'components/hero.swig' with {title: "Archive", subtitle: "pages tagged: " + page.tag} %}    
{% endblock %}


{% block body %}
	<div class="container">		
	  <div id="tag" class="tag">
	    {% for postItem in page.posts.toArray() %}
	      <div class="tag-item">
	        {% include 'components/post-preview.swig' with {item: postItem} %}
	      </div>
	    {% endfor %}
	  </div>

	  {% include 'includes/pagination.swig' %}
	</div>

{% endblock %}


