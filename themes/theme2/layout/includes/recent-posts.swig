{% if site.posts.length > 0 %}

  <div class="recent-posts">
  	<div class="container columns">
  		<div class="column column-1">
  			<img src="/images/me.jpg" alt="me" class="about-image">
  		</div>
  		<div class="column column-2">
		    {% for postItem in site.posts.toArray() %}	      
	        {% include '../components/post-preview.swig' with {item: postItem} %}
		    {% endfor %}  			
  		</div>
    </div>

    <div class="clearfix"></div>

    <img src="/images/switzerland.png" alt="me" class="switzerland">


  </div>

{% endif %}
