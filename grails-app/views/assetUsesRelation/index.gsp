
<%@ page import="org.sormar.AssetUsesRelation" %>



<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'assetUsesRelation.label', default: 'AssetUsesRelation')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	


	<div id="list-asset"  role="main">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<g:message code="default.list.label" args="[entityName]" />
			</div>

			
				<ul class="list-group">
					<g:each in="${assetUsesRelationInstanceList}" status="i" var="assetUsesRelationInstance">
					<li class="list-group-item">
						
						<g:link action="show" id="${assetUsesRelationInstance.id}">${fieldValue(bean: assetUsesRelationInstance, field: 'label')}</g:link>	
						
						<br><small>${fieldValue(bean: assetUsesRelationInstance, field: 'listSubLabel')}</small>
					
						
					
						
						
					
						
						</li>
					</g:each>
				
			</ul>
			<div class="pagination">
				<g:paginate total="${assetUsesRelationInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</body>
</html>
