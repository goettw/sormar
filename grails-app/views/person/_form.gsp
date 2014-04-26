<%@ page import="org.sormar.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'nachhame', 'error')} ">
	<label for="nachhame">
		<g:message code="person.nachhame.label" default="Nachhame" />
		
	</label>
	<g:textField name="nachhame" value="${personInstance?.nachhame}"class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'vorname', 'error')} ">
	<label for="vorname">
		<g:message code="person.vorname.label" default="Vorname" />
		
	</label>
	<g:textField name="vorname" value="${personInstance?.vorname}"class="form-control"/>

</div>

