<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'assetRelation.label', default: 'AssetRelation')}" />
<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>


	<div id="create-assetRelation" class="panel panel-primary" role="main">
		<div class="panel-heading">
			<g:message code="default.create.label" args="[entityName]" />
		</div>
		<div class="panel-body">
			<g:if test="${flash.message}">
				<div class="message" role="status">
					${flash.message}
				</div>
			</g:if>
			<g:hasErrors bean="${assetRelationInstance}">
				<ul class="errors" role="alert">
					<g:eachError bean="${assetRelationInstance}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}" /></li>
					</g:eachError>
				</ul>
			</g:hasErrors>
			<g:form url="[resource:assetRelationInstance, action:'save']">
				<fieldset class="form">
					<g:render template="form" />
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</div>
	<theme:zone name="sidebarLeft">
		<g:render template="sidebarLeftEdit"></g:render>
	</theme:zone>

</body>
</html>
