<%@ page import="org.sormar.Expert" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="baseLayout">
		<g:set var="entityName" value="${message(code: 'expert.label', default: 'Expert')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		
	
		<div id="create-expert" class="panel panel-primary" role="main">
		<div class="panel-heading">
			<g:message code="default.edit.label" args="[entityName]" />
		</div>
<div class="panel-body">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${expertInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${expertInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:expertInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${expertInstance?.version}" />
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
