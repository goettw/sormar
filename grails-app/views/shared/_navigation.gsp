

<div class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a href="${createLink(uri: '/')}" class="navbar-brand" style="padding: 2px"><img src="${resource(dir: 'images', file: 'logo-mid.png')}" alt="Sormar"
				width="80%" /></a>
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav ">	
				<g:render template="subNavigation"></g:render>
			</ul>
			<ul class="nav navbar-text navbar-right">
				<sec:ifLoggedIn>
					Logged in as <sec:username /> (<g:link controller='logout' >Logout</g:link>)
				
				</sec:ifLoggedIn> 
				<sec:ifNotLoggedIn>
					<g:link controller='login' action='auth'>Login Here</g:link>
				</sec:ifNotLoggedIn>
				
			</ul>
		</div>
	</div>
</div>
