

<%@ page import="org.sormer.Expert" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="scaffoldBase">
<g:set var="entityName" value="${message(code: 'expert.label', default: 'Expert')}" />
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
	<div id="show-expert" class="container" role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
		<form class="form-horizontal" role="form">
			
				<g:if test="${expertInstance?.firstName}">
				  <div class="form-group">
			<label class="col-sm-2 control-label"><g:message code="expert.firstName.label" default="First Name" /></label>
					<div class="col-sm-10">
					
						<p class="form-control-static" aria-labelledby="firstName-label"><g:fieldValue bean="${expertInstance}" field="firstName"/></p>
					
					    </div>
				</div>
				</g:if>
			
				<g:if test="${expertInstance?.lastName}">
				  <div class="form-group">
			<label class="col-sm-2 control-label"><g:message code="expert.lastName.label" default="Last Name" /></label>
					<div class="col-sm-10">
					
						<p class="form-control-static" aria-labelledby="lastName-label"><g:fieldValue bean="${expertInstance}" field="lastName"/></p>
					
					    </div>
				</div>
				</g:if>
			
				<g:if test="${expertInstance?.managesProducts}">
				  <div class="form-group">
			<label class="col-sm-2 control-label"><g:message code="expert.managesProducts.label" default="Manages Products" /></label>
					<div class="col-sm-10">
					
						<g:each in="${expertInstance.managesProducts}" var="m">
						<p class="form-control-static" aria-labelledby="managesProducts-label"><g:link controller="product" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></p>
						</g:each>
					
					    </div>
				</div>
				</g:if>
			
				<g:if test="${expertInstance?.managesReleases}">
				  <div class="form-group">
			<label class="col-sm-2 control-label"><g:message code="expert.managesReleases.label" default="Manages Releases" /></label>
					<div class="col-sm-10">
					
						<g:each in="${expertInstance.managesReleases}" var="m">
						<p class="form-control-static" aria-labelledby="managesReleases-label"><g:link controller="release" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></p>
						</g:each>
					
					    </div>
				</div>
				</g:if>
			
				<g:if test="${expertInstance?.username}">
				  <div class="form-group">
			<label class="col-sm-2 control-label"><g:message code="expert.username.label" default="Username" /></label>
					<div class="col-sm-10">
					
						<p class="form-control-static" aria-labelledby="username-label"><g:fieldValue bean="${expertInstance}" field="username"/></p>
					
					    </div>
				</div>
				</g:if>
			
		</form>
		<g:form url="[resource:expertInstance, action:'delete']" method="DELETE">
			<fieldset class="buttons">
				<g:link class="btn btn-default" action="edit" resource="${expertInstance}">
					<g:message code="default.button.edit.label" default="Edit" />
				</g:link>
				<g:actionSubmit class="btn btn-default" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
