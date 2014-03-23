
<%@ page import="org.sormar.Product" %>



<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	


	<div id="list-asset"  role="main">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<g:message code="default.list.label" args="[entityName]" />
			</div>

			
				<ul class="list-group">
					<g:each in="${productInstanceList}" status="i" var="productInstance">
					<li class="list-group-item">
						
						<g:link action="show" id="${productInstance.id}">${fieldValue(bean: productInstance, field: 'label')}</g:link>	
						
						<br><small>${fieldValue(bean: productInstance, field: 'listSubLabel')}</small>
					
						
					
						
						
					
						
						</li>
					</g:each>
				
			</ul>
			<div class="pagination">
				<g:paginate total="${productInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
</body>
</html>
