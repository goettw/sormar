

<%@ page import="org.sormar.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	


	<div id="list-product"  role="main">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<g:message code="default.list.label" args="[entityName]" />
			</div>

			<table class="table table-hover">
				<thead>
					<tr>
						
						<g:sortableColumn property="name" title="${message(code: 'product.name.label', default: 'Name')}" />
					
						<th><g:message code="product.productManager.label" default="Product Manager" /></th>
					
						<g:sortableColumn property="url" title="${message(code: 'product.url.label', default: 'Url')}" />
					
					</tr>
				</thead>
				<tbody>
					<g:each in="${productInstanceList}" status="i" var="productInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							
						<td><g:link action="show" id="${productInstance.id}">${fieldValue(bean: productInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: productInstance, field: "productManager")}</td>
					
						<td>${fieldValue(bean: productInstance, field: "url")}</td>
					
						</tr>
					</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</body>
</html>
