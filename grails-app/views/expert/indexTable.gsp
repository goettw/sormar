

<%@ page import="org.sormar.Expert" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'expert.label', default: 'Expert')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	


	<div id="list-expert"  role="main">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<g:message code="default.list.label" args="[entityName]" />
			</div>

			<table class="table table-hover">
				<thead>
					<tr>
						
						<g:sortableColumn property="username" title="${message(code: 'expert.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'expert.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'expert.lastName.label', default: 'Last Name')}" />
					
					</tr>
				</thead>
				<tbody>
					<g:each in="${expertInstanceList}" status="i" var="expertInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							
						<td><g:link action="show" id="${expertInstance.id}">${fieldValue(bean: expertInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: expertInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: expertInstance, field: "lastName")}</td>
					
						</tr>
					</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${expertInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</body>
</html>
