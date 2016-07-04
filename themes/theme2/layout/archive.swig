{% extends 'includes/layout.swig' %}


{% block header %}    
  {# By default, include the hero (regular size) with page title and headline #}
  {% include 'components/nav.swig' with {showTitle: true} %}
  {% if is_year() %}
    {% set subtitle = "posts from: " + page.month + '/' + page.year %}
  {% else %}
    {% set subtitle = "" %}
  {% endif %}
  
  {% include 'components/hero.swig' with {title: "Archive", subtitle: subtitle } %}    
{% endblock %}

{% block body %}
  {% set categoriesList = list_categories({ show_count: false }) %}
  {% set tagsList = list_tags({ show_count: false }) %}
  {% set archivesList = list_archives({ show_count: false }) %}
  <div id="archive" class="container">

    {% if !is_year() %}
      {% if theme.atom %}
        <p>
          The feed is available via
          <a href="{{ theme.atom }}">atom</a>.
        </p>
        <br>
      {% endif %}

      {% if config.atom %}
        <p>
          The feed is available via
          <a href="{{ config.atom }}">atom</a>.
        </p>
        <br>
      {% endif %}

      {% if categoriesList %}
      <aside>
        <h2>Categories</h2>
          {% autoescape false %}{{ categoriesList }}{% endautoescape %}
      </aside>
      <br>
      {% endif %}

      {% if tagsList %}
      <aside>
        <h2>Tags</h2>
        {% autoescape false %}{{ tagsList }}{% endautoescape %}
      </aside>
      <br>
      {% endif %}

      {% if archivesList %}
      <aside>
        <h2>Archives</h2>
        {% autoescape false %}{{ archivesList }}{% endautoescape %}
      </aside>
      {% endif %}


    {% else %}
      {% for postItem in page.posts.toArray() %}
        <div class="archive-item">
          {% include 'components/post-preview.swig' with {item: postItem} %}
        </div>
      {% endfor %}
    {% endif %}
  </div>

  {% include 'includes/pagination.swig' %}
{% endblock %}
