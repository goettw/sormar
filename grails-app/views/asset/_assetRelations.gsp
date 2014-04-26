<div class="panel panel-default" role="main">
	<div class="panel-heading">
		<g:message code="view.assetRelations.title" />
	</div>
	<div class="panel-body">
		<ul class="list-group">
		
			<g:each in="${assetRelations}" status="i" var="assetrelation">
				<li class="list-group-item">
				<small>
				<g:if test="${!assetInstance.identifier.name.equals(assetrelation.source.name) || !assetInstance.identifier.ver.equals(assetrelation.source.ver) }">
						<g:link controller="asset" action="show" action="showByIdentifier" params="['name':assetrelation.source.name,'ver':assetrelation.source.ver]">
							${assetrelation.source.name}
							${assetrelation.source.ver}
						</g:link>
					</g:if><g:else>it</g:else> ${assetrelation.type} 
					<g:if test="${!assetInstance.identifier.name.equals(assetrelation.target.name) || !assetInstance.identifier.ver.equals(assetrelation.target.ver) }">
					<g:link controller="asset" action="show" action="showByIdentifier"
						params="['name':assetrelation.target.name,'ver':assetrelation.target.ver]">
						${assetrelation.target.name}
						${assetrelation.target.ver}
					</g:link> 
					</g:if><g:else>it</g:else>
					<br>
				
				<g:link class="glyphicon glyphicon-info-sign" action="relationComment" resource="${assetInstance}" title="${message(code:'default.button.showscomments')}"></g:link>
				
				<span title="${message(code:'default.label.score')}"><small>${assetrelation.agreement.agree - assetrelation.agreement.disagree}</small></span> 
				<span title="${message(code:'default.label.numberOfVotes')}"><small>(${assetrelation.agreement.agree + assetrelation.agreement.disagree})</small></span>
				
				<span style="float:right">
					<g:link class="glyphicon glyphicon-thumbs-up" action="relationComment" resource="${assetInstance}" title="${message(code:'default.button.agree.label')}"></g:link> | 
					<g:link class="glyphicon glyphicon-thumbs-down" action="relationComment" resource="${assetInstance}" title="${message(code:'default.button.disagree.label')}"></g:link>
				</span>
				</small>
				</li>
			</g:each>
		</ul>
		
		<span style="float:right">
			
					<g:link class="glyphicon glyphicon-file" action="relationComment" resource="${assetInstance}" title="${message(code:'default.button.add.label')}"></g:link>
			
		</span>
	</div>
</div>