
<% import grails.persistence.Event %>
<%=packageName%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="baseLayout">
<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>


	<div id="show-${domainClass.propertyName}" class="panel panel-primary" role="main">
		<div class="panel-heading">
			<g:message code="default.show.label" args="[entityName]" />
		</div>
		<div class="panel-body">
			<g:if test="\${flash.message}">
				<div class="message" role="status">\${flash.message}</div>
			</g:if>
			<form class="form-horizontal" role="form">
				<%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
				allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
				props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) && (domainClass.constrainedProperties[it.name] ? domainClass.constrainedProperties[it.name].display : true) }
				Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
				props.each { p -> %>
			    
				<g:if test="\${${propertyName}?.${p.name}}">
				  <div class="form-group">
			<label class="col-sm-4 control-label"><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></label>
					<div class="col-sm-8">
					<%  if (p.isEnum()) { System.out.println "enum"%>
						<p class="form-control-static" aria-labelledby="${p.name}-label"><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></p>
					<%  } else if (p.oneToMany || p.manyToMany) { %>
						<g:each in="\${${propertyName}.${p.name}}" var="${p.name[0]}">
						<p class="form-control-static" aria-labelledby="${p.name}-label"><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${p.name[0]}.id}">\${${p.name[0]}?.encodeAsHTML()}</g:link></p>
						</g:each>
					<%  } else if (p.manyToOne || p.oneToOne) { %>
						<p class="form-control-static" aria-labelledby="${p.name}-label"><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${propertyName}?.${p.name}?.id}">\${${propertyName}?.${p.name}?.encodeAsHTML()}</g:link></p>
					<%  } else if (p.type == Boolean || p.type == boolean) { %>
						<p class="form-control-static" aria-labelledby="${p.name}-label"><g:formatBoolean boolean="\${${propertyName}?.${p.name}}" /></p>
					<%  } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
						<p class="form-control-static" aria-labelledby="${p.name}-label"><g:formatDate date="\${${propertyName}?.${p.name}}" /></p>
					<%  } else if (p.type == String && domainClass.constrainedProperties[p.name].url) { System.out.println "url"%>
						<p class="form-control-static" aria-labelledby="${p.name}-label"><a href='<g:fieldValue bean="\${${propertyName}}" field="${p.name}"/>' target='blank'><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></a></p>
					<%  } else if (!p.type.isArray()) { System.out.println "array"%>
						<p class="form-control-static" aria-labelledby="${p.name}-label"><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></p>
					<%  } %>
					    </div>
				</div>
				</g:if>
			<%  } %>
			</form>
			<g:form url="[resource:${propertyName}, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default" action="edit" resource="\${${propertyName}}">
						<g:message code="default.button.edit.label" default="Edit" />
					</g:link>
					<g:actionSubmit class="btn btn-default" action="delete" value="\${message(code: 'default.button.delete.label', default: 'Delete')}"
						onclick="return confirm('\${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>

	</div>
			 <theme:zone name="sidebarLeft">
	<g:render template="sidebarLeftShow" ></g:render>            
        </theme:zone>

</body>
</html>
