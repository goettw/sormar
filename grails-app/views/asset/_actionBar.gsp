<div class="panel panel-default" role="main">


	<div class="panel-body">
		<table style="width:100%">
		<tbody>
		<tr><td>
			<g:form method="post" action="searchAsset" class="form-inline">
				<g:textField class="form-control" name="searchPattern" />
				<g:submitButton name="search" class="btn btn-default btn-xs"/>
			</g:form>
			</td><td>
			<span style="float: right"> <g:link class="glyphicon glyphicon-file" action="create" resource="${assetInstance}"
					title="${message(code:'default.button.add.label')}"></g:link>
			</span>
		</td>
		</tr>
		</tbody>
		</table>
	</div>

</div>


