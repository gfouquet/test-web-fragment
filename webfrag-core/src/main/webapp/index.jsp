<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jstl/fmt"  %>
<!doctype html>
<html>
<body>
<h2>Hello World!</h2>
<h3>context-params</h3>
<ul>
${ initParam }
	<c:forEach var="p" items="${ initParam }">
	<li>${ p.key } : ${ p.value }</li>
	</c:forEach>
</ul>
<h3>internationalization (change browser locale to ja / en)</h3>
<p>
	<f:bundle basename="i18n">
	Hello : <f:message key="hello" />
	</f:bundle>
</p>
</body>
</html>
