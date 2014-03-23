
<%@ page import="org.sormar.Expert" %>



<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'expert.label', default: 'Expert')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	


	<div id="list-asset"  role="main">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<g:message code="default.list.label" args="[entityName]" />
			</div>

			
				<ul class="list-group">
					<g:each in="${expertInstanceList}" status="i" var="expertInstance">
					<li class="list-group-item">
						
						<g:link action="show" id="${expertInstance.id}">${fieldValue(bean: expertInstance, field: 'label')}</g:link>	
						
						<br><small>${fieldValue(bean: expertInstance, field: 'listSubLabel')}</small>
					
						
					
						
						
					
						
						</li>
					</g:each>
				
			</ul>
			<div class="pagination">
				<g:paginate total="${expertInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</body>
</html>
