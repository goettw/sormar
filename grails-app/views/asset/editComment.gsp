<%@ page import="org.sormar.AssetRelationComment"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'assetRelation.label', default: 'AssetRelationComment')}" />
<title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>


	<div id="create-assetRelation" class="panel panel-primary" role="main">
		<div class="panel-heading">
			<g:message code="default.edit.label" args="[entityName]" />
		</div>
		<div class="panel-body">
			<g:if test="${flash.message}">
				<div class="message" role="status">
					${flash.message}
				</div>
			</g:if>
			<g:hasErrors bean="${assetRelationCommentInstance}">
				<ul class="errors" role="alert">
					<g:eachError bean="${assetRelationCommentInstance}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}" /></li>
					</g:eachError>
				</ul>
			</g:hasErrors>
			
			<g:form url="[resource:assetRelationVommentInstance, action:'saveComment']" method="PUT">
				<fieldset class="form">
					<g:render template="formComment" />
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save"  action="saveComment" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</div>
	<theme:zone name="sidebarLeft">
		<g:render template="sidebarLeftEdit"></g:render>
	</theme:zone>
</body>
</html>
