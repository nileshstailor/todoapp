<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<table class="table table-striped">
	<caption>Your Todos Are</caption>
	<thead>
		<tr>
			<th>Description</th>
			<th>Target Date</th>
			<th>Is Completed?</th>
			<th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${todos}" var="todo">
		<tr>
			<td>${todo.desc}</td>
			
			<td><fmt:formatDate pattern="MM/dd/yyyy" value="${todo.targetDate}"/></td>
			<td>${todo.done} </td>
			<td><a href="/update-todo?id=${todo.id}" class="btn btn-success">Update</a></td>
			<td><a href="/delete-todo?id=${todo.id}" class="btn btn-danger">Delete</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table>

<div>
<a class="btn btn-success" href="/add-todo">Add</a>
</div>
<%@ include file="common/footer.jspf"%>