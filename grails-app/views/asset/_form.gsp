<%@ page import="org.sormer.Asset" %>



<div class="fieldcontain ${hasErrors(bean: assetInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="asset.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${assetInstance?.name}"class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: assetInstance, field: 'link', 'error')} ">
	<label for="link">
		<g:message code="asset.link.label" default="Link" />
		
	</label>
	<g:field type="url" name="link" value="${assetInstance?.link}"class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: assetInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="asset.type.label" default="Type" />
		
	</label>
	<g:select name="type" from="${assetInstance.constraints.type.inList}" value="${assetInstance?.type}" valueMessagePrefix="asset.type" noSelection="['': '']"/>

</div>

