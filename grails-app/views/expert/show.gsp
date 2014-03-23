

<%@ page import="org.sormar.Expert" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'expert.label', default: 'Expert')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>


	<div id="show-expert" class="panel panel-primary" role="main">
		<div class="panel-heading">
			<g:message code="default.show.label" args="[entityName]" />
		</div>
		<div class="panel-body">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<form class="form-horizontal" role="form">
				
			    
				<g:if test="${expertInstance?.username}">
				  <div class="form-group">
			<label class="col-sm-4 control-label"><g:message code="expert.username.label" default="Username" /></label>
					<div class="col-sm-8">
					
						<p class="form-control-static" aria-labelledby="username-label"><g:fieldValue bean="${expertInstance}" field="username"/></p>
					
					    </div>
				</div>
				</g:if>
			
			    
				<g:if test="${expertInstance?.firstName}">
				  <div class="form-group">
			<label class="col-sm-4 control-label"><g:message code="expert.firstName.label" default="First Name" /></label>
					<div class="col-sm-8">
					
						<p class="form-control-static" aria-labelledby="firstName-label"><g:fieldValue bean="${expertInstance}" field="firstName"/></p>
					
					    </div>
				</div>
				</g:if>
			
			    
				<g:if test="${expertInstance?.lastName}">
				  <div class="form-group">
			<label class="col-sm-4 control-label"><g:message code="expert.lastName.label" default="Last Name" /></label>
					<div class="col-sm-8">
					
						<p class="form-control-static" aria-labelledby="lastName-label"><g:fieldValue bean="${expertInstance}" field="lastName"/></p>
					
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

	</div>
</body>
</html>
