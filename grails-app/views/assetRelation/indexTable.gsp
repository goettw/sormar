

<%@ page import="org.sormar.AssetRelation" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'assetRelation.label', default: 'AssetRelation')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	


	<div id="list-assetRelation"  role="main">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<g:message code="default.list.label" args="[entityName]" />
			</div>

			<table class="table table-hover">
				<thead>
					<tr>
						
						<g:sortableColumn property="type" title="${message(code: 'assetRelation.type.label', default: 'Type')}" />
					
						<th><g:message code="assetRelation.agreement.label" default="Agreement" /></th>
					
						<th><g:message code="assetRelation.source.label" default="Source" /></th>
					
						<th><g:message code="assetRelation.target.label" default="Target" /></th>
					
					</tr>
				</thead>
				<tbody>
					<g:each in="${assetRelationInstanceList}" status="i" var="assetRelationInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							
						<td><g:link action="show" id="${assetRelationInstance.id}">${fieldValue(bean: assetRelationInstance, field: "type")}</g:link></td>
					
						<td>${fieldValue(bean: assetRelationInstance, field: "agreement")}</td>
					
						<td>${fieldValue(bean: assetRelationInstance, field: "source")}</td>
					
						<td>${fieldValue(bean: assetRelationInstance, field: "target")}</td>
					
						</tr>
					</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${assetRelationInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</body>
</html>
