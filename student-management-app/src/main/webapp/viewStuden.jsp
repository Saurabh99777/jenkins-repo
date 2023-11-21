<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<body>
    <h1>Students Details</h1>
 
    
    <table border="5">
        <thead>
            <tr>
                <th>Roll No</th>
                <th>Name</th>
                <th>Email</th>
                <th>City</th>
                <th>College</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${sms}" var="s">
                <tr>
                    <td>${s.rollno}</td>
                    <td>${s.name}</td>
                    <td>${s.email}</td>
                    <td>${s.city}</td>
                    <td>${s.college}</td>
                    <td>
                        <a href="delete-student?rollno=${s.rollno}">Delete</a> | <a href="edit-student?rollno=${s.rollno}">Edit</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
