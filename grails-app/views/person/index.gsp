
<%@ page import="org.sormar.Person" %>



<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	


	<div id="list-asset"  role="main">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<g:message code="default.list.label" args="[entityName]" />
			</div>

			
				<ul class="list-group">
					<g:each in="${personInstanceList}" status="i" var="personInstance">
					<li class="list-group-item">
						
						<g:link action="show" id="${personInstance.id}">${fieldValue(bean: personInstance, field: 'label')}</g:link>	
						
						<br><small>${fieldValue(bean: personInstance, field: 'listSubLabel')}</small>
					
						
					
						
						
					
						
						</li>
					</g:each>
				
			</ul>
			<div class="pagination">
				<g:paginate total="${personInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
		 <theme:zone name="sidebarLeft">
	<g:render template="sidebarLeftIndex" ></g:render>            
        </theme:zone>
</body>
</html>
