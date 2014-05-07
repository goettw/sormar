<div class="panel panel-default" role="main">
	<div class="panel-heading">
		<g:message code="view.actionbar.title" default="Asset Filter" />
	</div>
	<div class="panel-body">
	<g:form method="post" action="searchAsset">
		<div class="form-group">
			<g:textField class="form-control" name="searchPattern" />
		</div>

		<g:submitButton name="search" class="btn btn-default btn-xs" />

	</g:form>
	</div>

</div>