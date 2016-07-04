
<div class="recent-projects section">
	<div class="container columns">

		<div class="column column-1">
			<img src="/images/me.jpg" alt="me" class="about-image polaroid-image">
		</div>

		<div class="column column-2">
			<h2 class="section__headline">Recent Projects</h2>
			{% include "tagged-posts.swig" with {targetTag: "projects", preIcon: "code"} %}
		</div>

  </div>
</div>
