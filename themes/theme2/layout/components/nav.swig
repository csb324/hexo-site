<ul class="menu">
  {% for key in Object.keys(theme.menu) %}
  	<li class="menu__item">
      <a class="menu__link" href="{{ theme.menu[key] }}">{{ key }}</a>  		
  	</li>
  {% endfor %}
</ul>
