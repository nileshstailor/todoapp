<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<h1>Add a Todo</h1>

<form:form method="post" commandName="todo">
	<form:hidden path="id"/>
	<form:hidden path="user"/>
	<fieldset class="form-group">
		<form:hidden path="id"/>
		<form:label path="desc">Description</form:label>
		<form:input path="desc" type="text" class="form-control required" required="required"/>
		<form:errors path="desc" cssClass="text-danger" />
	</fieldset>
	
		<fieldset class="form-group">
		<form:hidden path="id"/>
		<form:label path="targetDate">Target Date</form:label>
		<form:input path="targetDate" type="text" class="form-control required" required="required"/>
		<form:errors path="targetDate" cssClass="text-danger" />
	</fieldset>
	
	<input class="btn btn-success" type="submit" value="Submit"/>
</form:form>
<%@ include file="common/footer.jspf"%>