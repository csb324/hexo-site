<div class="nav">
	{% if showTitle %}
		<a href="/" class="nav__title">Clara Beyer</a>
	{% endif %}

	<ul class="nav__items">
		{% set thisPage = page.path | replace('index.html','') | replace('/','') %}

	  {% for key in Object.keys(theme.menu) %}
	  	<li class="nav__item">

	  		{% set bareKey = theme.menu[key] | replace('/', '') %}
	  		{% if thisPage|upper == bareKey|upper %}
	  			{% set active = 'nav__link--active' %}
				{% else %}
					{% set active = '' %}
	  		{% endif %}

	      <a class="nav__link {{active}}" href="{{ theme.menu[key] }}">{{ key }}</a>
	  	</li>
	  {% endfor %}
	</ul>
</div>


