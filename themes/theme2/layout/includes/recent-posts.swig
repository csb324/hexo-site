{% if site.posts.length > 0 %}

  <div class="recent-posts">
  	<div class="container">
	    {% for postItem in site.posts.toArray() %}	      
        {% include '../components/post-preview.swig' with {item: postItem} %}
	    {% endfor %}
    </div>
  </div>

{% endif %}

