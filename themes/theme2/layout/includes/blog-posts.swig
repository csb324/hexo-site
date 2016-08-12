<div class="blog-posts section">
	<div class="container columns">

		<div class="column column-1">
			<div class="well">

				<h2 class="section__headline">
					hello!
				</h2>

			</div>
		</div>

		<div class="column column-2">
			<h2 class="section__headline">Blog Posts</h2>
			{% include "tagged-posts.swig" with {targetTag: "blog", preIcon: "code"} %}
		</div>

  </div>
</div>

