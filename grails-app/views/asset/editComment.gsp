<%@ page import="org.sormar.AssetRelationComment"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">

<g:set var="entityName" value="${assetRelationCommentInstance.assetRelation.source.name + " " + assetRelationCommentInstance.assetRelation.source.ver}" />
<title><g:message code="default.edit.assetRelation.label" args="[entityName]" /></title>
</head>
<body>


	<div id="create-assetRelation" class="panel panel-primary" role="main">
		<div class="panel-heading">
			<g:message code="default.edit.assetRelation.label" args="[entityName]" />
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
			
			<g:form url="[resource:assetRelationVommentInstance, action:'saveComment']" method="PUT" role="form" class="form-horizontal">
				<g:render template="formComment" />
				<span style="float: right">
					<g:actionSubmit class="btn btn-default" class="save"  action="saveComment" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</span>
			</g:form>
		</div>
	</div>
	<theme:zone name="sidebarLeft">
		<g:render template="sidebarLeftEdit"></g:render>
	</theme:zone>
</body>
</html>
