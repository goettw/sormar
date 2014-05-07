<div id="list-asset" role="main">
	


			<ul class="list-group">
				<g:each in="${assetInstanceList}" status="i" var="assetInstance">
					<li class="list-group-item"><g:link action="show" id="${assetInstance.id}">
							${fieldValue(bean: assetInstance, field: 'label')}
						</g:link> <br>
					<small>
							${fieldValue(bean: assetInstance, field: 'listSubLabel')}
					</small></li>
				</g:each>

			</ul>
				
		</div>
	