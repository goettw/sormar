<%@ page import="org.sormar.Asset" %>



<div class="fieldcontain ${hasErrors(bean: assetInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="asset.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${assetInstance?.name}"class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: assetInstance, field: 'source', 'error')} ">
	<label for="source">
		<g:message code="asset.source.label" default="Source" />
		
	</label>
	<g:field type="url" name="source" value="${assetInstance?.source}"class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: assetInstance, field: 'deployable', 'error')} ">
	<label for="deployable">
		<g:message code="asset.deployable.label" default="Deployable" />
		
	</label>
	<g:field type="url" name="deployable" value="${assetInstance?.deployable}"class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: assetInstance, field: 'documentation', 'error')} ">
	<label for="documentation">
		<g:message code="asset.documentation.label" default="Documentation" />
		
	</label>
	<g:field type="url" name="documentation" value="${assetInstance?.documentation}"class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: assetInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="asset.type.label" default="Type" />
		
	</label>
	<g:select name="type" from="${assetInstance.constraints.type.inList}" value="${assetInstance?.type}" valueMessagePrefix="asset.type" noSelection="['': '']"/>

</div>

