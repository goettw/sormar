

<%@ page import="org.sormer.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="scaffoldBase">
<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<div class="container">
		<div class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="${createLink(uri: '/')}" class="navbar-brand" style="padding: 2px"><img src="${resource(dir: 'images', file: 'sormar_logo.png')}"
						alt="Sormer" width="80%" /></a>
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><g:link action="create">
								<g:message code="default.new.label" args="[entityName]" />
							</g:link></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><g:link controller="product" >Products</g:link></li>
						<li><g:link controller="asset">Assets</g:link></li>
						<li><g:link controller="expert">Experts</g:link></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="list-product" class="container" role="main">
		<div  class="panel panel-primary">
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
