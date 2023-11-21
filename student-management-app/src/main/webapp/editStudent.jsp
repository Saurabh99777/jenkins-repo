<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Student</title>
</head>
<body>
    <h1>Add Student</h1>
    
    <form action="update-student" method="post">
    
    	<label for="name">Roll No:</label>
        <input type="text" id="name" name="rollno" readonly value="${student.rollno}"><br/>
    
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${student.name}"><br/>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${student.email}"><br/>
        
        <label for="city">City:</label>
        <input type="text" id="city" name="city" value="${student.city}"><br/>
        
        <label for="college">College:</label>
        <input type="text" id="college" name="college" value="${student.college}"><br/>
        
        <button type="submit">Update</button>
    </form>
    
</body>
</html>
