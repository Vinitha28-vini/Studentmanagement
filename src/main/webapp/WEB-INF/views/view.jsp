<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.Studentmanage1.Model.PathModel" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Student List</title>
  <style>
    body {
      font-family: Arial, sans-serif;
    }
    table {
      width: 90%;
      margin: 40px auto;
      border-collapse: collapse;
      background-color: #fff;
    }
    th, td {
      padding: 12px;
      border: 1px solid #ccc;
      text-align: center;
    }
    th {
      background-color: #4CAF50;
    }
    h1 {
      text-align: center;
      margin-top: 30px;
    }
    .button {
      display: block;
      width: 200px;
      margin: 20px auto;
      padding: 10px;
      background-color: #4CAF50;
      color: white;
      text-align: center;
      text-decoration: none;
      border-radius: 5px;
      font-weight: bold;
    }
    .edit-btn {
      background-color: #2196F3;
      color: white;
      padding: 6px 10px;
      border-radius: 4px;
      text-decoration: none;
      margin-right: 5px;
    }
    .delete-btn {
      background-color: #f44336;
      color: white;
      padding: 6px 10px;
      border-radius: 4px;
      text-decoration: none;
    }
  </style>
</head>
<body>

<h1>All Students</h1>

<table>
  <thead>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Department</th>
      <th>Year</th>
      <th>DOB</th>
      <th>Place</th>
      <th>Father Name</th>
      <th>Mother Name</th>
      <th>Actions</th> <!-- New column -->
    </tr>
  </thead>
  <tbody>
    <%
      List<?> rawList = (List<?>) request.getAttribute("students");
      List<PathModel> students = new ArrayList<>();

      if (rawList != null) {
        for (Object obj : rawList) {
          if (obj instanceof PathModel) {
            students.add((PathModel) obj);
          }
        }
      }

      if (!students.isEmpty()) {
        for (PathModel student : students) {
    %>
    <tr>
      <td><%= student.getId() %></td>
      <td><%= student.getName() %></td>
      <td><%= student.getDepartment() %></td>
      <td><%= student.getYear() %></td>
      <td><%= student.getDob() %></td>
      <td><%= student.getPlace() %></td>
      <td><%= student.getFatherName() %></td>
      <td><%= student.getMotherName() %></td>
      <td>
        <a class="edit-btn" href="/students/edit/<%= student.getId() %>">Edit</a>
        <a class="delete-btn" href="/students/delete/<%= student.getId() %>"
           onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>
      </td>
    </tr>
    <%
        }
      } else {
    %>
    <tr>
      <td colspan="9">No student records found.</td>
    </tr>
    <% } %>
  </tbody>
</table>

<a href="/login" class="button">Logout</a>

</body>
</html>
