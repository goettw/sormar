

<%@ page import="org.sormer.Expert" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="scaffoldBase">
<g:set var="entityName" value="${message(code: 'expert.label', default: 'Expert')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<div class="container">
		<div class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="${createLink(uri: '/')}" class="navbar-brand" style="padding: 2px"><img src="${resource(dir: 'images', file: 'logo-mid.png')}"
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
						<li><g:link controller="asset">Assets</g:link></li>
						<li><g:link controller="expert">Experts</g:link></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="list-expert" class="container" role="main">
		<div  class="panel panel-primary">
		<div class="panel-heading">
			<g:message code="default.list.label" args="[entityName]" />
		</div>
	
		<table class="table table-hover">
			<thead>
				<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'expert.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'expert.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="username" title="${message(code: 'expert.username.label', default: 'Username')}" />
					
				</tr>
			</thead>
			<tbody>
				<g:each in="${expertInstanceList}" status="i" var="expertInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="show" id="${expertInstance.id}">${fieldValue(bean: expertInstance, field: "firstName")}</g:link></td>
					
						<td>${fieldValue(bean: expertInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: expertInstance, field: "username")}</td>
					
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
