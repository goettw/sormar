<%@ page import="org.sormar.Asset" %>


<fieldset class="embedded">


<div class="form-group ${hasErrors(bean: assetInstance, field: 'identifier.name', 'error')} ">
	<label for="identifier.name"  class="col-sm-3 control-label">
		<g:message code="asset.identifier.name.label" default="Name" />
		
	</label>
	 <div class="col-sm-9">
	<g:textField name="identifier.name" value="${assetInstance?.identifier?.name}"class="form-control"/>
	</div>

</div>

<div class="form-group ${hasErrors(bean: assetInstance, field: 'identifier.ver', 'error')} ">
	<label for="identifier.ver" class="col-sm-3 control-label">
		<g:message code="asset.identifier.ver.label" default="Ver" />
		
	</label>
	<div class="col-sm-9">
	<g:textField name="identifier.ver" value="${assetInstance?.identifier?.ver}"class="form-control"/>
</div>
</div>


</fieldset>
<div class="form-group ${hasErrors(bean: assetInstance, field: 'source', 'error')} ">
	<label for="source" class="col-sm-3 control-label">
		<g:message code="asset.source.label" default="Source" />
		
	</label>
	<div class="col-sm-9">
	<g:field type="url" name="source" value="${assetInstance?.source}"class="form-control"/>
</div>
</div>

<div class="form-group ${hasErrors(bean: assetInstance, field: 'deployable', 'error')} ">
	<label for="deployable" class="col-sm-3 control-label">
		<g:message code="asset.deployable.label" default="Deployable" />
		
	</label>
	<div class="col-sm-9">
	<g:field type="url" name="deployable" value="${assetInstance?.deployable}"class="form-control"/>
</div>
</div>

<div class="form-group ${hasErrors(bean: assetInstance, field: 'documentation', 'error')} ">
	<label for="documentation" class="col-sm-3 control-label">
		<g:message code="asset.documentation.label" default="Documentation" />
		
	</label>
	<div class="col-sm-9">
	<g:field type="url" name="documentation" value="${assetInstance?.documentation}" class="form-control"/>
</div>
</div>

<div class="form-group ${hasErrors(bean: assetInstance, field: 'type', 'error')} ">
	<label for="type" class="col-sm-3 control-label">
		<g:message code="asset.type.label" default="Type" />
		
	</label>
	<div class="col-sm-9">
	<g:select class="form-control" name="type" from="${assetInstance.constraints.type.inList}" value="${assetInstance?.type}" valueMessagePrefix="asset.type" noSelection="['': '']"/>
</div>
</div>

