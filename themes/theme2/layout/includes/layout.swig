{% set pageTitle = page.title || config.subtitle || '' -%}
{% if is_archive() %}
  {% set pageTitle = 'Archives' %}
{% endif %}
{% if is_tag() %}
  {% set pageTitle = 'Tag: ' + page.tag %}
{% endif %}
{% if is_category() %}
  {% set pageTitle = 'Category: ' + page.category %}
{% endif %}
{% if is_month() %}
  {% set pageTitle = pageTitle + ': ' + page.month + '/' + page.year %}
{% endif %}
{% if is_year() %}
  {% set pageTitle = pageTitle + ': ' + page.year %}
{% endif %}
{% set pageTitle = pageTitle + ' [ ' + config.title + ' ]' %}
<!doctype html>
<html lang="{{ config.language }}">
<head>
  <meta charset="UTF-8">
  <meta name=viewport content="width=device-width, initial-scale=1">
  <title>{{ pageTitle }}</title>

  <script>
    {{ site.loadCSS }}
  </script>
  <style>
    {{ site.critical }}  
  </style>
  
  {% if theme.stylesheets !== undefined && theme.stylesheets.length > 0 %}
    {# stylesheet list from config.yml #}
    {% for url in theme.stylesheets %}
      <script>
        loadCSS("{{url}}");
      </script>
      <noscript><link rel="stylesheet" href="{{ url }}"></noscript>
    {% endfor %}
  {% endif %}

</head>
<body>


<div class="page">  
  {% block header %}
    {# By default, include the hero (regular size) with page title and headline #}
    {% include '../components/nav.swig' with {showTitle: true} %}
    {% include '../components/hero.swig' with {title: page.title, subtitle: page.headline, large: false} %}    
  {% endblock %}

  <div class="page__body">
    {% block body %}{% endblock %}
  </div>


  {% include "get-in-touch.swig" %}

  <div class="footer page__footer">
    <div class="container">
      copyright 2016.  
    </div>
  </div>

</div>

{% if theme.scripts !== undefined && theme.scripts.length > 0 %}
  {# scripts list from config.yml #}
  {% for url in theme.scripts %}
    <script src="{{ url }}"></script>
  {% endfor %}
{% endif %}

</body>
</html>
