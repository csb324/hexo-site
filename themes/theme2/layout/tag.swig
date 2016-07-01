{% extends 'includes/layout.swig' %}

{% block body %}
  <div id="tag">
    <h1>{{ page.tag }}</h1>
    {% for postItem in page.posts.toArray() %}
      <div class="tag-item">
        {% if postItem.link %}
          <a href="{{ url_for(postItem.link) }}" target="_blank">
            {{ postItem.title || 'No Title' }}
          </a>
        {% else %}
          <a href="{{ url_for(postItem.link) }}">
            {{ postItem.title || 'No Title' }}
          </a>
        {% endif %}

        <time datetime="{{ date_xml(postItem.date) }}">
          {{ date(postItem.date) }}
        </time>
      </div>
    {% endfor %}
  </div>

  {% include 'includes/pagination.swig' %}
{% endblock %}
