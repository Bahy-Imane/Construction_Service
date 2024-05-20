<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Project List</title>
</head>
<body>
<h1>Project List</h1>
<table border="1">
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Description</th>
    <th>Start Date</th>
    <th>End Date</th>
    <th>Budget</th>
  </tr>
  <c:forEach var="project" items="${projects}">
    <tr>
      <td>${project.pId}</td>
      <td>${project.pName}</td>
      <td>${project.pDescription}</td>
      <td>${project.pStartdate}</td>
      <td>${project.pEndDate}</td>
      <td>${project.budget}</td>
    </tr>
  </c:forEach>
</table>
<a href="addProject.jsp">Add New Project</a>
</body>
</html>
