<small> <span style="float: right"> <sec:ifLoggedIn>
Hello <sec:loggedInUserInfo field="username" /> 
				
				Logged in as <sec:username /> (<g:link controller='logout' >Logout</g:link>)
				
	</sec:ifLoggedIn> <sec:ifNotLoggedIn>
			<g:link controller='login' action='auth'>Login Here
	</g:link>
		</sec:ifNotLoggedIn>
</span>
</small>