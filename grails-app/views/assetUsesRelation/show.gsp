

<%@ page import="org.sormar.AssetUsesRelation" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'assetUsesRelation.label', default: 'AssetUsesRelation')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>


	<div id="show-assetUsesRelation" class="panel panel-primary" role="main">
		<div class="panel-heading">
			<g:message code="default.show.label" args="[entityName]" />
		</div>
		<div class="panel-body">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<form class="form-horizontal" role="form">
				
			    
				<g:if test="${assetUsesRelationInstance?.asset}">
				  <div class="form-group">
			<label class="col-sm-4 control-label"><g:message code="assetUsesRelation.asset.label" default="Asset" /></label>
					<div class="col-sm-8">
					
						<p class="form-control-static" aria-labelledby="asset-label"><g:link controller="asset" action="show" id="${assetUsesRelationInstance?.asset?.id}">${assetUsesRelationInstance?.asset?.encodeAsHTML()}</g:link></p>
					
					    </div>
				</div>
				</g:if>
			
			    
				<g:if test="${assetUsesRelationInstance?.usesAsset}">
				  <div class="form-group">
			<label class="col-sm-4 control-label"><g:message code="assetUsesRelation.usesAsset.label" default="Uses Asset" /></label>
					<div class="col-sm-8">
					
						<p class="form-control-static" aria-labelledby="usesAsset-label"><g:link controller="asset" action="show" id="${assetUsesRelationInstance?.usesAsset?.id}">${assetUsesRelationInstance?.usesAsset?.encodeAsHTML()}</g:link></p>
					
					    </div>
				</div>
				</g:if>
			
			</form>
			<g:form url="[resource:assetUsesRelationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default" action="edit" resource="${assetUsesRelationInstance}">
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
