<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<asset:stylesheet href="bootstrap-custom.css" />
<asset:javascript src="bootstrap-custom.js" />
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
<g:layoutHead />
<g:javascript library="application" />
<r:layoutResources />
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12" align="center">
				<div id="sormerLogo" role="banner">
					<a href="http://www.sormar.com"><img src="${resource(dir: 'images', file: 'sormar.png')}" alt="Sormer" /></a>
					<p>All you need to build great software!</p>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12" align="center">
				<g:layoutBody />
			</div>
			<div class="row" style="height: 280px"></div>
			<div class="row">
				<div class="col-md-12" align="center">
					<b>So</b>ftware <b>R</b>esource <b>Ma</b>nage<b>r</b>


				</div>
			</div>
		</div>
		<r:layoutResources />
	</div>
	</div>
</body>
</html>
