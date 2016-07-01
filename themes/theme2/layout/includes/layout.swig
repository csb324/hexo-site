
{% set pageTitle = page.title || config.subtitle || '' %}

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
  <title>{{ pageTitle }}</title>
  {% if theme.stylesheets !== undefined && theme.stylesheets.length > 0 %}
    {# stylesheet list from config.yml #}
    {% for url in theme.stylesheets %}
      <link rel="stylesheet" href="{{ url }}">
    {% endfor %}
  {% endif %}
</head>
<body>

<div class="page">  
  {% block header %}    
    {# By default, include the hero (regular size) with page title and headline #}
    {% include '../components/nav.swig' with {showTitle: true} %}
    {% include '../components/hero.swig' with {title: page.title, subtitle: page.headline} %}
  {% endblock %}

  <div class="page__body container">
    {% block body %}{% endblock %}
  </div>


  <div class="footer page__footer">
    <p>copyright 2016.</p>
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
