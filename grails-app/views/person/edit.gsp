<%@ page import="org.sormar.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="baseLayout">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		
	
		<div id="create-person" class="panel panel-primary" role="main">
		<div class="panel-heading">
			<g:message code="default.edit.label" args="[entityName]" />
		</div>
<div class="panel-body">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${personInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${personInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:personInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${personInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
		</div>
			 <theme:zone name="sidebarLeft">
	<g:render template="sidebarLeftEdit" ></g:render>            
        </theme:zone>
	</body>
</html>
