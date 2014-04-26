

<%@ page import="org.sormar.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	


	<div id="list-person"  role="main">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<g:message code="default.list.label" args="[entityName]" />
			</div>

			<table class="table table-hover">
				<thead>
					<tr>
						
						<g:sortableColumn property="nachhame" title="${message(code: 'person.nachhame.label', default: 'Nachhame')}" />
					
						<g:sortableColumn property="vorname" title="${message(code: 'person.vorname.label', default: 'Vorname')}" />
					
					</tr>
				</thead>
				<tbody>
					<g:each in="${personInstanceList}" status="i" var="personInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							
						<td><g:link action="show" id="${personInstance.id}">${fieldValue(bean: personInstance, field: "nachhame")}</g:link></td>
					
						<td>${fieldValue(bean: personInstance, field: "vorname")}</td>
					
						</tr>
					</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</body>
</html>
