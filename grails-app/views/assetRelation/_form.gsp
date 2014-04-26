<%@ page import="org.sormar.AssetRelation"%>



<div class="fieldcontain ${hasErrors(bean: assetRelationInstance, field: 'type', 'error')} ">
	<label for="type"> <g:message code="assetRelation.type.label" default="Type" />

	</label>
	<g:select name="type" from="${assetRelationInstance.constraints.type.inList}" value="${assetRelationInstance?.type}" valueMessagePrefix="assetRelation.type"
		noSelection="['': '']" />

</div>
<fieldset class="embedded">
	<legend>
		<g:message code="assetRelation.agreement.label" default="Agreement" />
	</legend>
	<div class="fieldcontain ${hasErrors(bean: assetRelationInstance, field: 'agreement.agree', 'error')} ">
		<label for="agreement.agree"> <g:message code="assetRelation.agreement.agree.label" default="Agree" />

		</label>
		<g:field name="agree" type="number" value="${assetRelationInstance.agreement.agree}" required="" class="form-control" />

	</div>

	<div class="fieldcontain ${hasErrors(bean: assetRelationInstance, field: 'agreement.disagree', 'error')} ">
		<label for="agreement.disagree"> <g:message code="assetRelation.agreement.disagree.label" default="Disagree" />

		</label>
		<g:field name="disagree" type="number" value="${assetRelationInstance.agreement.disagree}" required="" class="form-control" />

	</div>
</fieldset>
<fieldset class="embedded">
	<legend>
		<g:message code="assetRelation.source.label" default="Source" />
	</legend>
	<div class="fieldcontain ${hasErrors(bean: assetRelationInstance, field: 'source.name', 'error')} ">
		<label for="source.name"> <g:message code="assetRelation.source.name.label" default="Name" />

		</label>
		<g:textField name="name" required="" value="${assetRelationInstance.source.name}" class="form-control" />

	</div>
	<div class="fieldcontain ${hasErrors(bean: assetRelationInstance, field: 'source.ver', 'error')} ">
		<label for="source.name"> <g:message code="assetRelation.source.name.label" default="Name" />

		</label>
		<g:textField name="name" required="" value="${assetRelationInstance.source.ver}" class="form-control" />

	</div>


</fieldset>
<fieldset class="embedded">
	<legend>
		<g:message code="assetRelation.target.label" default="Target" />
	</legend>

	<div class="fieldcontain ${hasErrors(bean: assetRelationInstance, field: 'target.name', 'error')} ">
		<label for="target.name"> <g:message code="assetRelation.target.name.label" default="Name" />

		</label>
		<g:textField name="name" required="" value="${assetRelationInstance?.target.name}" class="form-control" />

	</div>
	<div class="fieldcontain ${hasErrors(bean: assetRelationInstance, field: 'target.ver', 'error')} ">
		<label for="target.name"> <g:message code="assetRelation.target.name.label" default="Name" />

		</label>
		<g:textField name="name" required="" value="${assetRelationInstance?.target.ver}" class="form-control" />

	</div>



</fieldset>
