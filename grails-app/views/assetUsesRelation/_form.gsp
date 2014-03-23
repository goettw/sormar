<%@ page import="org.sormar.AssetUsesRelation" %>



<div class="fieldcontain ${hasErrors(bean: assetUsesRelationInstance, field: 'asset', 'error')} ">
	<label for="asset">
		<g:message code="assetUsesRelation.asset.label" default="Asset" />
		
	</label>
	<g:select id="asset" name="asset.id" from="${org.sormar.Asset.list()}" optionKey="id" required="" value="${assetUsesRelationInstance?.asset?.id}" class="many-to-one"class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: assetUsesRelationInstance, field: 'usesAsset', 'error')} ">
	<label for="usesAsset">
		<g:message code="assetUsesRelation.usesAsset.label" default="Uses Asset" />
		
	</label>
	<g:select id="usesAsset" name="usesAsset.id" from="${org.sormar.Asset.list()}" optionKey="id" required="" value="${assetUsesRelationInstance?.usesAsset?.id}" class="many-to-one"class="form-control"/>

</div>

