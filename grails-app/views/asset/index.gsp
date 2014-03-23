
<%@ page import="org.sormar.Asset" %>



<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'asset.label', default: 'Asset')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	


	<div id="list-asset"  role="main">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<g:message code="default.list.label" args="[entityName]" />
			</div>

			
				<ul class="list-group">
					<g:each in="${assetInstanceList}" status="i" var="assetInstance">
					<li class="list-group-item">
						
						<g:link action="show" id="${assetInstance.id}">${fieldValue(bean: assetInstance, field: 'label')}</g:link>	
						
						<br><small>${fieldValue(bean: assetInstance, field: 'listSubLabel')}</small>
					
						
					
						
						
					
						
						</li>
					</g:each>
				
			</ul>
			<div class="pagination">
				<g:paginate total="${assetInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</body>
</html>
