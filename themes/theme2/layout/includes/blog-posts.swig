<div class="blog-posts section">
	<div class="container columns">

		<div class="column column-1">
			<div class="well">
				<h2 class="section__headline well__headline">
					hello!
				</h2>
				<div class="well__content">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias labore molestiae animi sapiente, veritatis delectus doloremque. Ab mollitia, fuga et a dolorum suscipit quaerat quae facere tempore sit exercitationem sequi!</p>
				</div>
			</div>
		</div>

		<div class="column column-2">
			<h2 class="section__headline">Blog Posts</h2>
			{% include "tagged-posts.swig" with {targetTag: "blog", preIcon: "code"} %}
		</div>

  </div>
</div>

