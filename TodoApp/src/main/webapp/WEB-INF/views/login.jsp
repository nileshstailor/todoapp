<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<form action="/login" method="post">
${errorMsg}
Enter your name <input type="text" name="name"/> Password:<input type="password" name="password"/> <input type="submit" value="Login"/>
</form>

<%@ include file="common/footer.jspf"%>