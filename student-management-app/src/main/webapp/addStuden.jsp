<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Student</title>
</head>
<body>
    <h1>Add Student</h1>
    
    <form action="add-student" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br/>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br/>
        
        <label for="city">City:</label>
        <input type="text" id="city" name="city" required><br/>
        
        <label for="college">College:</label>
        <input type="text" id="college" name="college" required><br/>
        
        <button type="submit">Add Student</button>
    </form>
    
</body>
</html>
