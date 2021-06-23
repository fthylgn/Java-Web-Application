<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<div class="container">
	<div class="row justify-content-center align-items-center" style="margin-top:10em">
	    <c:if test="${pageContext.request.userPrincipal.name != null}">
	       
	        <h2>Welcome ${pageContext.request.userPrincipal.name}</h2>
	
	    </c:if>
	</div>
</div>


<%@ include file="common/footer.jspf"%>