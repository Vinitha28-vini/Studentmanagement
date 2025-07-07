<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edit Student</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }
    h2 {
      text-align: center;
      margin-top: 30px;
    }
    form {
      width: 500px;
      margin: 40px auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    label {
      display: block;
      margin-top: 15px;
      font-weight: bold;
    }
    input[type="text"], input[type="number"], input[type="email"], input[type="date"] {
      width: 100%;
      padding: 8px;
      margin-top: 5px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }
    .button-group {
      margin-top: 20px;
      text-align: center;
    }
    .btn {
      padding: 10px 20px;
      font-weight: bold;
      text-decoration: none;
      color: white;
      border: none;
      border-radius: 5px;
      margin: 0 10px;
      cursor: pointer;
    }
    .save-btn {
      background-color: #4CAF50;
    }
    .cancel-btn {
      background-color: #f44336;
    }
  </style>
</head>
<body>

<h2>Edit Student Details</h2>

<form action="/students/update" method="post">
  <!-- Hidden ID field -->
  <input type="hidden" name="id" value="${student.id}" />

  <label>Name:</label>
  <input type="text" name="name" value="${student.name}" required />

  <label>Department:</label>
  <input type="text" name="department" value="${student.department}" required />

  <label>Year:</label>
  <input type="number" name="year" value="${student.year}" required />

  <label>DOB:</label>
  <input type="date" name="dob" value="${student.dob}" required />

  <label>Place:</label>
  <input type="text" name="place" value="${student.place}" required />

  <label>Father Name:</label>
  <input type="text" name="fatherName" value="${student.fatherName}" required />

  <label>Mother Name:</label>
  <input type="text" name="motherName" value="${student.motherName}" required />

  <div class="button-group">
    <button type="submit" class="btn save-btn">Save</button>
    <a href="/students/view" class="btn cancel-btn">Cancel</a>
  </div>
</form>

</body>
</html>
