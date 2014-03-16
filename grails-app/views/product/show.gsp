

<%@ page import="org.sormer.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="scaffoldBase">
<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	
	<div class="container">
		<div class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="${createLink(uri: '/')}" class="navbar-brand" style="padding: 2px"><img src="${resource(dir: 'images', file: 'sormar_logo.png')}"
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
						<li class="active"><g:link controller="product">Products</g:link></li>
						<li><g:link controller="asset">Assets</g:link></li>
						<li><g:link controller="expert">Experts</g:link></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="show-product" class="container" role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
		<form class="form-horizontal" role="form">
			
				<g:if test="${productInstance?.name}">
				  <div class="form-group">
			<label class="col-sm-2 control-label"><g:message code="product.name.label" default="Name" /></label>
					<div class="col-sm-10">
					
						<p class="form-control-static" aria-labelledby="name-label"><g:fieldValue bean="${productInstance}" field="name"/></p>
					
					    </div>
				</div>
				</g:if>
			
				<g:if test="${productInstance?.productManager}">
				  <div class="form-group">
			<label class="col-sm-2 control-label"><g:message code="product.productManager.label" default="Product Manager" /></label>
					<div class="col-sm-10">
					
						<p class="form-control-static" aria-labelledby="productManager-label"><g:link controller="expert" action="show" id="${productInstance?.productManager?.id}">${productInstance?.productManager?.encodeAsHTML()}</g:link></p>
					
					    </div>
				</div>
				</g:if>
			
				<g:if test="${productInstance?.url}">
				  <div class="form-group">
			<label class="col-sm-2 control-label"><g:message code="product.url.label" default="Url" /></label>
					<div class="col-sm-10">
					
						<p class="form-control-static" aria-labelledby="url-label"><g:fieldValue bean="${productInstance}" field="url"/></p>
					
					    </div>
				</div>
				</g:if>
			
				<g:if test="${productInstance?.releases}">
				  <div class="form-group">
			<label class="col-sm-2 control-label"><g:message code="product.releases.label" default="Releases" /></label>
					<div class="col-sm-10">
					
						<g:each in="${productInstance.releases}" var="r">
						<p class="form-control-static" aria-labelledby="releases-label"><g:link controller="release" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></p>
						</g:each>
					
					    </div>
				</div>
				</g:if>
			
		</form>
		<g:form url="[resource:productInstance, action:'delete']" method="DELETE">
			<fieldset class="buttons">
				<g:link class="btn btn-default" action="edit" resource="${productInstance}">
					<g:message code="default.button.edit.label" default="Edit" />
				</g:link>
				<g:actionSubmit class="btn btn-default" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
