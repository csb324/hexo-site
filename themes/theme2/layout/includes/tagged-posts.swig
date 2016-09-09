{% for postItem in page.posts %}

	{% set toDisplay = false %}

	{% if postItem.tags %}
		{% set postTags = postItem.tags %}
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
	<a href="/tags/{{targetTag}}/" class="read-more__link">See More</a>
</div>
