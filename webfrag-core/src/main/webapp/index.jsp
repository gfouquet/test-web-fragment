<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</body>
</html>
