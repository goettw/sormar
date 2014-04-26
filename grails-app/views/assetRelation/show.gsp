

<%@ page import="org.sormar.AssetRelation"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'assetRelation.label', default: 'AssetRelation')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>


	<div id="show-assetRelation" class="panel panel-primary" role="main">
		<div class="panel-heading">
			<g:message code="default.show.label" args="[entityName]" />
		</div>
		<div class="panel-body">
			<g:if test="${flash.message}">
				<div class="message" role="status">
					${flash.message}
				</div>
			</g:if>
			<form class="form-horizontal" role="form">






				<g:if test="${assetRelationInstance?.source}">
					<div class="form-group">
						<label class="col-sm-4 control-label"><g:message code="assetRelation.source.label" default="Source" /></label>
						<div class="col-sm-8">

							<p class="form-control-static" aria-labelledby="source-label">

								<g:link controller="asset" action="showByIdentifier"  params="['name':assetRelationInstance.source.name,'ver':assetRelationInstance.source.ver]" >
									<g:fieldValue bean="${assetRelationInstance}" field="source" /> 
								</g:link>
							</p>

						</div>
					</div>
				</g:if>


				<g:if test="${assetRelationInstance?.target}">
					<div class="form-group">
						<label class="col-sm-4 control-label"><g:message code="assetRelation.target.label" default="Target" /></label>
						<div class="col-sm-8">

							<p class="form-control-static" aria-labelledby="target-label">
								<g:link controller="asset" action="showByIdentifier"  params="['name':assetRelationInstance.target.name,'ver':assetRelationInstance.target.ver]" >
									<g:fieldValue bean="${assetRelationInstance}" field="target" />
									</g:link>
							</p>

						</div>
					</div>

					<g:if test="${assetRelationInstance?.type}">
						<div class="form-group">
							<label class="col-sm-4 control-label"><g:message code="assetRelation.type.label" default="Type" /></label>
							<div class="col-sm-8">

								<p class="form-control-static" aria-labelledby="type-label">
									<g:fieldValue bean="${assetRelationInstance}" field="type" />
								</p>

							</div>
						</div>
					</g:if>
				</g:if>
				<g:if test="${assetRelationInstance?.agreement}">
					<div class="form-group">
						<label class="col-sm-4 control-label"><g:message code="assetRelation.agreement.label" default="Agreement" /></label>
						<div class="col-sm-8">

							<p class="form-control-static" aria-labelledby="agreement-label">
								<g:fieldValue bean="${assetRelationInstance}" field="agreement" />
							</p>

						</div>
					</div>
				</g:if>

			</form>
			<g:form url="[resource:assetRelationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default" action="edit" resource="${assetRelationInstance}">
						<g:message code="default.button.edit.label" default="Edit" />
					</g:link>
					<g:actionSubmit class="btn btn-default" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
						onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>

		</div>

	</div>
	<theme:zone name="sidebarLeft">
		<g:render template="sidebarLeftShow"></g:render>
	</theme:zone>

</body>
</html>
