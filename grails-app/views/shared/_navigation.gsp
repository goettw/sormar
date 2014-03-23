

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
					<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				
			</ul>

			<ul class="nav navbar-nav navbar-right">
			
				<g:render template="subNavigation"></g:render>

			</ul>
		</div>
	</div>
</div>
