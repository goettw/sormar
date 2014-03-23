<%@ page import="org.sormar.Expert" %>



<div class="fieldcontain ${hasErrors(bean: expertInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="expert.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${expertInstance?.username}"class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: expertInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="expert.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${expertInstance?.firstName}"class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: expertInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="expert.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${expertInstance?.lastName}"class="form-control"/>

</div>

