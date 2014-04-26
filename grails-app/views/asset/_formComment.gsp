<%@ page import="org.sormar.AssetRelationComment"%>


<div class="container">
<g:textField name="asset.id" value="${assetId}"/>
	<div class="row">
		<div class="col-md-12">
			<div class="fieldcontain ${hasErrors(bean: assetRelationCommentInstance, field: 'assetRelation.type', 'error')} ">
				<label for="type"> <g:message code="assetRelation.type.label" default="Type" />

				</label>
				<g:select name="assetRelationCommentInstance.assetRelation.type" from="${assetRelationCommentInstance.assetRelation.constraints.type.inList}" value="${assetRelationCommentInstance?.assetRelation.type}"
					valueMessagePrefix="assetRelationCommentInstance.assetRelation.type" noSelection="['': '']" />

			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<fieldset class="embedded">
				<legend>
					<g:message code="assetRelation.source.label" default="Source" />
				</legend>
				<div class="fieldcontain ${hasErrors(bean: assetRelationCommentInstance, field: 'assetRelation.source.name', 'error')} ">
					<label for="source.name"> <g:message code="assetRelation.source.name.label" default="Name" />

					</label>
					<g:textField name="assetRelationCommentInstance.assetRelation.source.name" required="" value="${assetRelationCommentInstance.assetRelation.source.name}" class="form-control" />

				</div>
				<div class="fieldcontain ${hasErrors(bean: assetRelationCommentInstance, field: 'assetRelation.source.ver', 'error')} ">
					<label for="source.name"> <g:message code="assetRelation.source.name.label" default="Version" />

					</label>
					<g:textField name="assetRelationCommentInstance.assetRelation.source.ver" required="" value="${assetRelationCommentInstance.assetRelation.source.ver}" class="form-control" />

				</div>


			</fieldset>
		</div>

		<div class="col-md-3">
			<fieldset class="embedded">
				<legend>
					<g:message code="assetRelation.target.label" default="Target" />
				</legend>

				<div class="fieldcontain ${hasErrors(bean: assetRelationCommentInstance, field: 'assetRelation.target.name', 'error')} ">
					<label for="assetRelationCommentInstance.assetRelation.target.name"> <g:message code="assetRelation.target.name.label" default="Name" />

					</label>
					<g:textField name="assetRelationCommentInstance.assetRelation.target.name" required="" value="${assetRelationCommentInstance?.assetRelation.target.name}" class="form-control" />

				</div>
				<div class="fieldcontain ${hasErrors(bean: assetRelationCommentInstance, field: 'assetRelation.target.ver', 'error')} ">
					<label for="target.ver"> <g:message code="assetRelation.target.name.label" default="Version" />

					</label>
					<g:textField name="assetRelationCommentInstance.assetRelation.target.ver" required="" value="${assetRelationCommentInstance?.assetRelation.target.ver}" class="form-control" />

				</div>
			</fieldset>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-6">
			<div class="fieldcontain ${hasErrors(bean: assetRelationCommentInstance, field: 'comment', 'error')} ">
				<label for="source.name"> <g:message code="assetRelationComment.label" default="Comment" />

				</label>
				<g:textArea name="assetRelationCommentInstance.comment" required="" value="${assetRelationCommentInstance.comment}" class="form-control" />

			</div>
		</div>
	</div>
</div>