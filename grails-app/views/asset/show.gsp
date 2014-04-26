

<%@ page import="org.sormar.Asset"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'asset.label', default: 'Asset')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>





	<div id="show-asset" class="panel panel-primary" role="main">
		<div class="panel-heading">
			${assetInstance?.identifier.name}
			${assetInstance?.identifier.ver}
		</div>
		<div class="panel-body">
			<g:if test="${flash.message}">
				<div class="message" role="status">
					${flash.message}
				</div>
			</g:if>
			<form class="form-horizontal" role="form">


				<g:if test="${assetInstance?.identifier}">
					<div class="form-group">
						<label class="col-sm-2 control-label"><g:message code="asset.identifier.label" default="Identifier" /></label>
						<div class="col-sm-8">

							<p class="form-control-static" aria-labelledby="identifier-label">
								<g:fieldValue bean="${assetInstance}" field="identifier" />
							</p>

						</div>
					</div>
				</g:if>


				<g:if test="${assetInstance?.source}">
					<div class="form-group">
						<label class="col-sm-2 control-label"><g:message code="asset.source.label" default="Source" /></label>
						<div class="col-sm-8">

							<p class="form-control-static" aria-labelledby="source-label">
								<a href='<g:fieldValue bean="${assetInstance}" field="source"/>' target='blank'><g:fieldValue bean="${assetInstance}" field="source" /></a>
							</p>

						</div>
					</div>
				</g:if>


				<g:if test="${assetInstance?.deployable}">
					<div class="form-group">
						<label class="col-sm-2 control-label"><g:message code="asset.deployable.label" default="Deployable" /></label>
						<div class="col-sm-8">

							<p class="form-control-static" aria-labelledby="deployable-label">
								<a href='<g:fieldValue bean="${assetInstance}" field="deployable"/>' target='blank'><g:fieldValue bean="${assetInstance}" field="deployable" /></a>
							</p>

						</div>
					</div>
				</g:if>


				<g:if test="${assetInstance?.documentation}">
					<div class="form-group">
						<label class="col-sm-2 control-label"><g:message code="asset.documentation.label" default="Documentation" /></label>
						<div class="col-sm-8">

							<p class="form-control-static" aria-labelledby="documentation-label">
								<a href='<g:fieldValue bean="${assetInstance}" field="documentation"/>' target='blank'><g:fieldValue bean="${assetInstance}" field="documentation" /></a>
							</p>

						</div>
					</div>
				</g:if>


				<g:if test="${assetInstance?.type}">
					<div class="form-group">
						<label class="col-sm-2 control-label"><g:message code="asset.type.label" default="Type" /></label>
						<div class="col-sm-8">

							<p class="form-control-static" aria-labelledby="type-label">
								<g:fieldValue bean="${assetInstance}" field="type" />
							</p>

						</div>
					</div>
				</g:if>
				<g:if test="${assetInstance?.dateCreated}">
					<div class="form-group">
						<label class="col-sm-2 control-label"><g:message code="default.dateCreated.label" default="date created" /></label>
						<div class="col-sm-8">

							<p class="form-control-static" aria-labelledby="type-label">
								<g:fieldValue bean="${assetInstance}" field="dateCreated" />
							</p>

						</div>
					</div>
				</g:if>
				<g:if test="${assetInstance?.lastUpdated}">
					<div class="form-group">
						<label class="col-sm-2 control-label"><g:message code="default.lastUpdated.label" default="Last updated" /></label>
						<div class="col-sm-8">

							<p class="form-control-static" aria-labelledby="type-label">
								<g:fieldValue bean="${assetInstance}" field="lastUpdated" />
							</p>

						</div>
					</div>
				</g:if>

			</form>
			<span style="float: right"> 
				<g:form url="[resource:assetInstance, action:'delete']" method="DELETE">
				<g:link action="edit" class="glyphicon glyphicon-pencil" id="${assetInstance.id}"
					title="${message(code: 'default.button.edit.label', default: 'Edit')}">

				</g:link> 
						<g:actionSubmit src="" name="delete" class="btn btn-default btn-xs" action="delete" value="Delete"
							onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</g:form>

			</span>

		</div>

	</div>



	<theme:zone name="sidebarLeft">
		<g:render template="sidebarLeftShow"></g:render>
	</theme:zone>

</body>
</html>
