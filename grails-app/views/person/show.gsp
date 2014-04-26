

<%@ page import="org.sormar.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>


	<div id="show-person" class="panel panel-primary" role="main">
		<div class="panel-heading">
			<g:message code="default.show.label" args="[entityName]" />
		</div>
		<div class="panel-body">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<form class="form-horizontal" role="form">
				
			    
				<g:if test="${personInstance?.nachhame}">
				  <div class="form-group">
			<label class="col-sm-4 control-label"><g:message code="person.nachhame.label" default="Nachhame" /></label>
					<div class="col-sm-8">
					
						<p class="form-control-static" aria-labelledby="nachhame-label"><g:fieldValue bean="${personInstance}" field="nachhame"/></p>
					
					    </div>
				</div>
				</g:if>
			
			    
				<g:if test="${personInstance?.vorname}">
				  <div class="form-group">
			<label class="col-sm-4 control-label"><g:message code="person.vorname.label" default="Vorname" /></label>
					<div class="col-sm-8">
					
						<p class="form-control-static" aria-labelledby="vorname-label"><g:fieldValue bean="${personInstance}" field="vorname"/></p>
					
					    </div>
				</div>
				</g:if>
			
			</form>
			<g:form url="[resource:personInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default" action="edit" resource="${personInstance}">
						<g:message code="default.button.edit.label" default="Edit" />
					</g:link>
					<g:actionSubmit class="btn btn-default" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
						onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>

	</div>
			 <theme:zone name="sidebarLeft">
	<g:render template="sidebarLeftShow" ></g:render>            
        </theme:zone>

</body>
</html>
