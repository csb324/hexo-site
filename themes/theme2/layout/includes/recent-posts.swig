
{% if site.posts.length > 0 %}
  <div id="recent-posts">

    {% for postItem in site.posts.toArray() %}
      <div class="recent-post-item">
        {% include '../components/post-preview.swig' with {item: postItem} %}
      </div>
    {% endfor %}
    
  </div>
{% endif %}
