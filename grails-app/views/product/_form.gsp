<%@ page import="org.sormar.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="product.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${productInstance?.name}"class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'productManager', 'error')} ">
	<label for="productManager">
		<g:message code="product.productManager.label" default="Product Manager" />
		
	</label>
	<g:select id="productManager" name="productManager.id" from="${org.sormar.Expert.list()}" optionKey="id" value="${productInstance?.productManager?.id}" class="many-to-one" noSelection="['null': '']"class="form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="product.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${productInstance?.url}"class="form-control"/>

</div>

