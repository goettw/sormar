<%@ page import="org.sormar.Asset" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="baseLayout">
		<g:set var="entityName" value="${message(code: 'asset.label', default: 'Asset')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		
	
		<div id="create-asset" class="panel panel-primary" role="main">
			<div class="panel-heading">
				<g:message code="default.edit.label" args="[entityName]" />
			</div>
			<div class="panel-body">
				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>
				<g:hasErrors bean="${assetInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${assetInstance}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
				</g:hasErrors>
				<g:form url="[resource:assetInstance, action:'update']" method="PUT" class="form-horizontal" role="form">
					<g:hiddenField name="version" value="${assetInstance?.version}" />
				
					<g:render template="form"/>
					<span style="float: right"> 
						<g:actionSubmit class="btn btn-default"  action="show" value="${message(code: 'default.button.cancel.label', default: 'Cancel')}" />
						<g:actionSubmit class="btn btn-default"  action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					</span>
				</g:form>
			</div>
		</div>
		<theme:zone name="sidebarLeft">
			<g:render template="sidebarLeftEdit" ></g:render>            
        </theme:zone>
	</body>
</html>
