{% if item.link %}
  {% set href = url_for(item.link) %}
{% else %}
  {% set href = url_for(item.path) %}
{% endif %}

<div class="post-preview">
	
	<time class="post-preview__date" datetime="{{ date_xml(item.date) }}">
	  {{ date(item.date) }}
	</time>

  <h3 class="post-preview__title">
  	<a class="post-preview__link" href="{{ href }}">
    {% if item.icon %}
      <i class="fa fa-{{item.icon}} post-preview__icon"></i>      
    {% elseif preIcon %}
      <i class="fa fa-{{preIcon}} post-preview__icon"></i>
    {% endif %}
  	{{ item.title || '(No Title)' }}
	  </a>
  </h3>



  {% if item.headline %}
		<p class="post-preview__subtitle">{{item.headline}}</p>
  {% endif %}

</div>
