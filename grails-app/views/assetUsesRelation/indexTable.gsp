

<%@ page import="org.sormar.AssetUsesRelation" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'assetUsesRelation.label', default: 'AssetUsesRelation')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	


	<div id="list-assetUsesRelation"  role="main">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<g:message code="default.list.label" args="[entityName]" />
			</div>

			<table class="table table-hover">
				<thead>
					<tr>
						
						<th><g:message code="assetUsesRelation.asset.label" default="Asset" /></th>
					
						<th><g:message code="assetUsesRelation.usesAsset.label" default="Uses Asset" /></th>
					
					</tr>
				</thead>
				<tbody>
					<g:each in="${assetUsesRelationInstanceList}" status="i" var="assetUsesRelationInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							
						<td><g:link action="show" id="${assetUsesRelationInstance.id}">${fieldValue(bean: assetUsesRelationInstance, field: "asset")}</g:link></td>
					
						<td>${fieldValue(bean: assetUsesRelationInstance, field: "usesAsset")}</td>
					
						</tr>
					</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${assetUsesRelationInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</body>
</html>
