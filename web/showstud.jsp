<%@page import="mypkg.Student"%>
<%@page import="org.hibernate.Session"%>
<%
int id=Integer.parseInt(request.getParameter("t1"));
Session ses=mypkg.HibernateUtil.getSessionFactory().openSession();
Student s=(Student)ses.get(Student.class, id);
%>
<html>
    <body>
        <h1>Student Details!</h1>
        <table border="2">
            <tr>
                <td>Rollno</td>
                <td><%= s.getRollno() %></td>
            </tr>
            <tr>
                <td>Name</td>
                <td><%= s.getSname() %></td>
            </tr>
            <tr>
                <td>Marks</td>
                <td><%= s.getMarks() %></td>
            </tr>
        </table>
    </body>
</html>
