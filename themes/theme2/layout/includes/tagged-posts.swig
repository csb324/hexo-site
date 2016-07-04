{% for postItem in site.posts.toArray() %}

	{% set toDisplay = false %}

	{% if postItem.tags.toArray() %}
		{% set postTags = postItem.tags.toArray() %}
		{% for tag in postTags %}
			{% if tag.name == targetTag %}
				{% set toDisplay = true %}
			{% endif %}		    			
		{% endfor %}
	{% endif %}

	{% if toDisplay %}
    {% include '../components/post-preview.swig' with {item: postItem} %}
	{% endif %}
	
{% endfor %}

<div class="read-more">
	<a href="/tags/{{targetTag}}/" class="read-more__link"></a>
</div>
