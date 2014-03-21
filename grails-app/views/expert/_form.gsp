<%@ page import="org.sormer.Expert" %>



<div class="fieldcontain ${hasErrors(bean: expertInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="expert.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${expertInstance?.firstName}" class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: expertInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="expert.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${expertInstance?.lastName}" class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: expertInstance, field: 'managesProducts', 'error')} ">
	<label for="managesProducts">
		<g:message code="expert.managesProducts.label" default="Manages Products" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${expertInstance?.managesProducts?}" var="m">
    <li><g:link controller="product" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="product" action="create" params="['expert.id': expertInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'product.label', default: 'Product')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: expertInstance, field: 'managesReleases', 'error')} ">
	<label for="managesReleases">
		<g:message code="expert.managesReleases.label" default="Manages Releases" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${expertInstance?.managesReleases?}" var="m">
    <li><g:link controller="release" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="release" action="create" params="['expert.id': expertInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'release.label', default: 'Release')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: expertInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="expert.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${expertInstance?.username}" class="form-control"/>

</div>

