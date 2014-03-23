<%@ page import="org.sormar.AssetUsesRelation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="baseLayout">
		<g:set var="entityName" value="${message(code: 'assetUsesRelation.label', default: 'AssetUsesRelation')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		
	
		<div id="create-assetUsesRelation" class="panel panel-primary" role="main">
		<div class="panel-heading">
			<g:message code="default.edit.label" args="[entityName]" />
		</div>
<div class="panel-body">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${assetUsesRelationInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${assetUsesRelationInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:assetUsesRelationInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${assetUsesRelationInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
		</div>
	</body>
</html>
