
<%@ page import="org.sormar.AssetRelation" %>



<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'assetRelation.label', default: 'AssetRelation')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	


	<div id="list-asset"  role="main">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<g:message code="default.list.label" args="[entityName]" />
			</div>

			
				<ul class="list-group">
					<g:each in="${assetRelationInstanceList}" status="i" var="assetRelationInstance">
					<li class="list-group-item">
						
						<g:link action="show" id="${assetRelationInstance.id}">${fieldValue(bean: assetRelationInstance, field: 'label')}</g:link>	
						
						<br><small>${fieldValue(bean: assetRelationInstance, field: 'listSubLabel')}</small>
					
						
					
						
						
					
						
						</li>
					</g:each>
				
			</ul>
			<div class="pagination">
				<g:paginate total="${assetRelationInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
		 <theme:zone name="sidebarLeft">
	<g:render template="sidebarLeftIndex" ></g:render>            
        </theme:zone>
</body>
</html>
