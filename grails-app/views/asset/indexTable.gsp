

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

			<table class="table table-hover">
				<thead>
					<tr>
						
						<g:sortableColumn property="name" title="${message(code: 'asset.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="source" title="${message(code: 'asset.source.label', default: 'Source')}" />
					
						<g:sortableColumn property="deployable" title="${message(code: 'asset.deployable.label', default: 'Deployable')}" />
					
						<g:sortableColumn property="documentation" title="${message(code: 'asset.documentation.label', default: 'Documentation')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'asset.type.label', default: 'Type')}" />
					
					</tr>
				</thead>
				<tbody>
					<g:each in="${assetInstanceList}" status="i" var="assetInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							
						<td><g:link action="show" id="${assetInstance.id}">${fieldValue(bean: assetInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: assetInstance, field: "source")}</td>
					
						<td>${fieldValue(bean: assetInstance, field: "deployable")}</td>
					
						<td>${fieldValue(bean: assetInstance, field: "documentation")}</td>
					
						<td>${fieldValue(bean: assetInstance, field: "type")}</td>
					
						</tr>
					</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${assetInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</body>
</html>
