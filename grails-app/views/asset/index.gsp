

<%@ page import="org.sormer.Asset" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="scaffoldBase">
<g:set var="entityName" value="${message(code: 'asset.label', default: 'Asset')}" />
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
						<li><g:link controller="product">Products</g:link></li>
						<li class="active"><g:link controller="asset">Assets</g:link></li>
						<li><g:link controller="expert">Experts</g:link></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="list-asset" class="container" role="main">
		<div  class="panel panel-primary">
		<div class="panel-heading">
			<g:message code="default.list.label" args="[entityName]" />
		</div>
	
		<table class="table table-hover">
			<thead>
				<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'asset.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="link" title="${message(code: 'asset.link.label', default: 'Link')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'asset.type.label', default: 'Type')}" />
					
				</tr>
			</thead>
			<tbody>
				<g:each in="${assetInstanceList}" status="i" var="assetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="show" id="${assetInstance.id}">${fieldValue(bean: assetInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: assetInstance, field: "link")}</td>
					
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
