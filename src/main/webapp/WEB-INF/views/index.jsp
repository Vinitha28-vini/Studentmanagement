<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Form</title>
<style>
  body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #d4fc79, #96e6a1);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  .form-container {
    background-color: #ffffff;
    padding: 40px;
    border-radius: 12px;
    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
    width: 400px;
    text-align: center;
    position: relative;
  }

  .home-link {
    position: absolute;
    top: 15px;
    right: 15px;
    text-decoration: none;
    background-color: #81c784;
    color: white;
    padding: 8px 14px;
    border-radius: 8px;
    font-size: 14px;
    transition: background-color 0.3s ease, transform 0.2s ease;
  }

  .home-link:hover {
    background-color: #66bb6a;
    transform: scale(1.05);
  }

  h1 {
    color: #4caf50;
    margin-bottom: 25px;
  }

  label {
    display: block;
    margin-top: 18px;
    font-size: 15px;
    color: #333;
    text-align: left;
  }

  input[type="text"],
  input[type="number"],
  input[type="date"] {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    font-size: 15px;
    border: 2px solid #81c784;
    border-radius: 6px;
    box-sizing: border-box;
    transition: border-color 0.3s;
  }

  input:focus {
    border-color: #4caf50;
    outline: none;
  }

  button {
    margin-top: 20px;
    width: 100%;
    padding: 12px;
    background-color: #4caf50;
    color: white;
    font-size: 16px;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    transition: background-color 0.7s, transform 0.5s;
  }

  button:hover {
     background-color: #388e3c;
    transform: scale(1.05);
  }

  .view-btn {
    background-color: #4caf50;
    margin-top: 10px;
  }

  .view-btn:hover {
    background-color: #388e3c;
  }
</style>
</head>

<body>
  <div class="form-container">
    <h1>Student Form</h1>
    
    <form action="/students/add" method="post">
      <label for="name">Name</label>
      <input type="text" name="name" id="name" required />

      <label for="department">Department</label>
      <input type="text" name="department" id="department" required />

      <label for="year">Year</label>
      <input type="number" name="year" id="year" required />

      <label for="dob">Date of Birth</label>
      <input type="date" name="dob" id="date" required />

      <label for="place">Place</label>
      <input type="text" name="place" id="place" required />

      <label for="fatherName">Father's Name</label>
      <input type="text" name="fatherName" id="fatherName" required />

      <label for="motherName">Mother's Name</label>
      <input type="text" name="motherName" id="motherName" required />

      <!-- Submit Button -->
      <button type="submit">Submit</button>
    </form>

    <!-- View Students Button -->
    <form action="/students/view" method="get">
      <button type="submit" class="view-btn">View Students</button>
    </form>
  </div>
</body>
</html>
