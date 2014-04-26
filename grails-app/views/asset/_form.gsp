<%@ page import="org.sormar.Asset" %>


<fieldset class="embedded"><legend><g:message code="asset.identifier.label" default="Identifier" /></legend>


<div class="fieldcontain ${hasErrors(bean: assetInstance, field: 'identifier.name', 'error')} ">
	<label for="identifier.name">
		<g:message code="asset.identifier.name.label" default="Name" />
		
	</label>
	<g:textField name="identifier.name" value="${assetInstance?.identifier?.name}"class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: assetInstance, field: 'identifier.ver', 'error')} ">
	<label for="identifier.ver">
		<g:message code="asset.identifier.ver.label" default="Ver" />
		
	</label>
	<g:textField name="identifier.ver" value="${assetInstance?.identifier?.ver}"class="form-control"/>

</div>


</fieldset>
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

