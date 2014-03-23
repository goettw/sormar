<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />

<title>Welcome to softwarefabric</title>

</head>
<body>





	<section class="home-grid jeans-collection-grid">
		<ul class="product-grid list-unstyled">
			<li class="product col-sm-4 cat-product">
			<g:link controller="asset">
					<div class="product-overlay">
						<div class="content">
							<div class="content-inner">
								<h1>Assets</h1>
								<p>Don't do everything on your own. Most of the things are already somewhere</p>
							</div>
						</div>
					</div>
					<img src="${resource(dir: 'images', file: 'DSC_0688.jpg')}" />

				</g:link></li>





			<li class="product col-sm-4 cat-product">
			<g:link controller="product">
					<div class="product-overlay">
						<div class="content">
							<div class="content-inner">
								<h1>Products</h1>
								<p>Develop your own products based on assets and with the help of experts.</p>
							</div>
						</div>
					</div> 
					<img src="${resource(dir: 'images', file: 'DSC_0691.jpg')}" />
			</g:link>
			
			
			</li>
			<li class="product col-sm-4 cat-product"><g:link controller="expert"><div class="product-overlay">
						<div class="content">
							<div class="content-inner">
								<h1>Experts</h1>
								<p>Find the right experts to support you.</p>
							</div>
						</div>
					</div> 
					
					<img src="${resource(dir: 'images', file: 'DSC_0545.jpg')}" />
					</g:link></li>
		</ul>
	</section>
</body>
</html>
