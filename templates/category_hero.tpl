<!-- {% extends "preview.tpl" %} -->
{% block content %}
<section class="section-title-text">
	<div class="container-fluid nested">
		<h1>{{ d.full_award }}: {{ d.cat }}</h1>
		<p>{{ d.cat.description }}</p>
	</div>
</section>
{% endblock %}