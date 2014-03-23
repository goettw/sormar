

<%@ page import="org.sormar.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>


	<div id="show-product" class="panel panel-primary" role="main">
		<div class="panel-heading">
			<g:message code="default.show.label" args="[entityName]" />
		</div>
		<div class="panel-body">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<form class="form-horizontal" role="form">
				
			    
				<g:if test="${productInstance?.name}">
				  <div class="form-group">
			<label class="col-sm-4 control-label"><g:message code="product.name.label" default="Name" /></label>
					<div class="col-sm-8">
					
						<p class="form-control-static" aria-labelledby="name-label"><g:fieldValue bean="${productInstance}" field="name"/></p>
					
					    </div>
				</div>
				</g:if>
			
			    
				<g:if test="${productInstance?.productManager}">
				  <div class="form-group">
			<label class="col-sm-4 control-label"><g:message code="product.productManager.label" default="Product Manager" /></label>
					<div class="col-sm-8">
					
						<p class="form-control-static" aria-labelledby="productManager-label"><g:link controller="expert" action="show" id="${productInstance?.productManager?.id}">${productInstance?.productManager?.encodeAsHTML()}</g:link></p>
					
					    </div>
				</div>
				</g:if>
			
			    
				<g:if test="${productInstance?.url}">
				  <div class="form-group">
			<label class="col-sm-4 control-label"><g:message code="product.url.label" default="Url" /></label>
					<div class="col-sm-8">
					
						<p class="form-control-static" aria-labelledby="url-label"><g:fieldValue bean="${productInstance}" field="url"/></p>
					
					    </div>
				</div>
				</g:if>
			
			</form>
			<g:form url="[resource:productInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default" action="edit" resource="${productInstance}">
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
