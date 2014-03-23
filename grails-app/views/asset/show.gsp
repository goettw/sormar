

<%@ page import="org.sormar.Asset" %>
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
			<g:message code="default.show.label" args="[entityName]" />
		</div>
		<div class="panel-body">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<form class="form-horizontal" role="form">
				
			    
				<g:if test="${assetInstance?.name}">
				  <div class="form-group">
			<label class="col-sm-4 control-label"><g:message code="asset.name.label" default="Name" /></label>
					<div class="col-sm-8">
					
						<p class="form-control-static" aria-labelledby="name-label"><g:fieldValue bean="${assetInstance}" field="name"/></p>
					
					    </div>
				</div>
				</g:if>
			
			    
				<g:if test="${assetInstance?.source}">
				  <div class="form-group">
			<label class="col-sm-4 control-label"><g:message code="asset.source.label" default="Source" /></label>
					<div class="col-sm-8">
					
						<p class="form-control-static" aria-labelledby="source-label"><a href='<g:fieldValue bean="${assetInstance}" field="source"/>' target='blank'><g:fieldValue bean="${assetInstance}" field="source"/></a></p>
					
					    </div>
				</div>
				</g:if>
			
			    
				<g:if test="${assetInstance?.deployable}">
				  <div class="form-group">
			<label class="col-sm-4 control-label"><g:message code="asset.deployable.label" default="Deployable" /></label>
					<div class="col-sm-8">
					
						<p class="form-control-static" aria-labelledby="deployable-label"><a href='<g:fieldValue bean="${assetInstance}" field="deployable"/>' target='blank'><g:fieldValue bean="${assetInstance}" field="deployable"/></a></p>
					
					    </div>
				</div>
				</g:if>
			
			    
				<g:if test="${assetInstance?.documentation}">
				  <div class="form-group">
			<label class="col-sm-4 control-label"><g:message code="asset.documentation.label" default="Documentation" /></label>
					<div class="col-sm-8">
					
						<p class="form-control-static" aria-labelledby="documentation-label"><a href='<g:fieldValue bean="${assetInstance}" field="documentation"/>' target='blank'><g:fieldValue bean="${assetInstance}" field="documentation"/></a></p>
					
					    </div>
				</div>
				</g:if>
			
			    
				<g:if test="${assetInstance?.type}">
				  <div class="form-group">
			<label class="col-sm-4 control-label"><g:message code="asset.type.label" default="Type" /></label>
					<div class="col-sm-8">
					
						<p class="form-control-static" aria-labelledby="type-label"><g:fieldValue bean="${assetInstance}" field="type"/></p>
					
					    </div>
				</div>
				</g:if>
			
			</form>
			<g:form url="[resource:assetInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default" action="edit" resource="${assetInstance}">
						<g:message code="default.button.edit.label" default="Edit" />
					</g:link>
					<g:actionSubmit class="btn btn-default" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
						onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>

	</div>
</body>
</html>
