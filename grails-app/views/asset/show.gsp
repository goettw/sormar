

<%@ page import="org.sormer.Asset" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="scaffoldBase">
<g:set var="entityName" value="${message(code: 'asset.label', default: 'Asset')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	
	<div class="container">
		<div class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="${createLink(uri: '/')}" class="navbar-brand" style="padding: 2px"><img src="${resource(dir: 'images', file: 'logo-mid.png')}"
						alt="Sormer" width="80%" /></a>
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
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
	<div id="show-asset" class="container" role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
		<form class="form-horizontal" role="form">
			
				<g:if test="${assetInstance?.name}">
				  <div class="form-group">
			<label class="col-sm-2 control-label"><g:message code="asset.name.label" default="Name" /></label>
					<div class="col-sm-10">
					
						<p class="form-control-static" aria-labelledby="name-label"><g:fieldValue bean="${assetInstance}" field="name"/></p>
					
					    </div>
				</div>
				</g:if>
			
				<g:if test="${assetInstance?.link}">
				  <div class="form-group">
			<label class="col-sm-2 control-label"><g:message code="asset.link.label" default="Link" /></label>
					<div class="col-sm-10">
					
						<p class="form-control-static" aria-labelledby="link-label"><g:fieldValue bean="${assetInstance}" field="link"/></p>
					
					    </div>
				</div>
				</g:if>
			
				<g:if test="${assetInstance?.type}">
				  <div class="form-group">
			<label class="col-sm-2 control-label"><g:message code="asset.type.label" default="Type" /></label>
					<div class="col-sm-10">
					
						<p class="form-control-static" aria-labelledby="type-label"><g:fieldValue bean="${assetInstance}" field="type"/></p>
					
					    </div>
				</div>
				</g:if>
			
		</form>
		<g:form url="[resource:assetInstance, action:'delete']" method="DELETE">
			<fieldset class="buttons">
				<g:link class="btn btn-default" action="edit" resource="${assetInstance}">
					<g:message code="default.button.edit.label" default="Edit" />
				</g:link>
				<g:actionSubmit class="btn btn-default" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
