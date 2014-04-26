<% import grails.persistence.Event %>
<%=packageName%>



<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	


	<div id="list-asset"  role="main">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<g:message code="default.list.label" args="[entityName]" />
			</div>

			
				<ul class="list-group">
					<g:each in="\${${propertyName}List}" status="i" var="${propertyName}">
					<li class="list-group-item">
						
						<g:link action="show" id="\${${propertyName}.id}">\${fieldValue(bean: ${propertyName}, field: 'label')}</g:link>	
						
						<br><small>\${fieldValue(bean: ${propertyName}, field: 'listSubLabel')}</small>
					
						
					
						
						
					
						
						</li>
					</g:each>
				
			</ul>
			<div class="pagination">
				<g:paginate total="\${${propertyName}Count ?: 0}" />
			</div>
		</div>
	</div>
		 <theme:zone name="sidebarLeft">
	<g:render template="sidebarLeftIndex" ></g:render>            
        </theme:zone>
</body>
</html>
