<%@ page import="org.sormer.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="product.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${productInstance?.name}" class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'productManager', 'error')} ">
	<label for="productManager">
		<g:message code="product.productManager.label" default="Product Manager" />
		
	</label>
	<g:select id="productManager" name="productManager.id" from="${org.sormer.Expert.list()}" optionKey="id" required="" value="${productInstance?.productManager?.id}" class="many-to-one"class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'releases', 'error')} ">
	<label for="releases">
		<g:message code="product.releases.label" default="Releases" />
		
	</label>
	<g:select name="releases" from="${org.sormer.Release.list()}" multiple="multiple" optionKey="id" size="5" required="" value="${productInstance?.releases*.id}" class="many-to-many"class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="product.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${productInstance?.url}" class="form-control"/>

</div>

