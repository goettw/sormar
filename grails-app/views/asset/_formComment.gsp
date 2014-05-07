<%@ page import="org.sormar.AssetRelationComment"%>




<g:hiddenField name="assetRelationCommentInstance.assetRelation.source.name" required="" value="${assetRelationCommentInstance.assetRelation.source.name}"
	class="form-control" />
<g:hiddenField name="assetRelationCommentInstance.assetRelation.source.ver" required="" value="${assetRelationCommentInstance.assetRelation.source.ver}"
	class="form-control" />


<fieldset class="embedded">


	<div class="form-group ${hasErrors(bean: assetRelationCommentInstance, field: 'assetRelation.target.name', 'error')} ">
		<label for="assetRelationCommentInstance.assetRelation.target.name" class="col-sm-3 control-label"> <g:message code="assetRelation.target.name.label"
				default="Name" />

		</label>
		<div class="col-sm-9">
			<g:textField id="targetName" name="assetRelationCommentInstance.assetRelation.target.name" required=""
				value="${assetRelationCommentInstance?.assetRelation.target.name}" class="form-control" />
			
		</div>

		<r:script>
		
	
      $("#targetName").autocomplete({
      	source: function (request, response) {
      		$.ajax({
      			url: "${createLink(action : 'searchAssetForTextbox')}",
      			dataType: "json",
      			data: {
      				term: request.term
      			},
      			type: 'POST',
      			success: function (data) {
      				 response($.map(data, function (item) {
                            return { label: item, value: item};
                     }))
      			}
      		});
      	},
      	select: function (event, ui) {
      	    $.ajax({
      			url: "${createLink(action : 'getAssetVersions')}",
      			dataType: "json",
      			data: {
      				term: ui.item.value
      			},
      			type: 'POST',
      			success: function (data) {
      				 response($.map(data, function (item) {
                            return { label: item.identifier.name, value: item. identifier.name};
                     }))
      			}
      		});
      	}
      });  
        


</r:script>
	</div>
	<div class="form-group ${hasErrors(bean: assetRelationCommentInstance, field: 'assetRelation.target.ver', 'error')} ">
		<label for="target.ver" class="col-sm-3 control-label"> <g:message code="assetRelation.target.name.label" default="Version" />

		</label>
		<div class="col-sm-9">
			<g:textField id="targetVersion" name="assetRelationCommentInstance.assetRelation.target.ver" required="" value="${assetRelationCommentInstance?.assetRelation.target.ver}"
				class="form-control" />
		</div>
	</div>


	<div class="form-group ${hasErrors(bean: assetRelationCommentInstance, field: 'comment', 'error')} ">
		<label for="source.name" class="col-sm-3 control-label"> <g:message code="assetRelationComment.label" default="Comment" />

		</label>
		<div class="col-sm-9">
			<g:textArea name="assetRelationCommentInstance.comment" required="" value="${assetRelationCommentInstance.comment}" class="form-control" />
		</div>
	</div>
	<div class="form-group ${hasErrors(bean: assetRelationCommentInstance, field: 'assetRelation.type', 'error')} ">
		<label for="type" class="col-sm-3 control-label"> <g:message code="assetRelation.type.label" default="Type" />

		</label>
		<div class="col-sm-9">
			<g:select name="assetRelationCommentInstance.assetRelation.type" from="${assetRelationCommentInstance.assetRelation.constraints.type.inList}"
				value="${assetRelationCommentInstance?.assetRelation.type}" valueMessagePrefix="assetRelationCommentInstance.assetRelation.type" noSelection="['': '']" />
		</div>
	</div>

</fieldset>
