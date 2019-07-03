
<%@page import="org.hibernate.criterion.Criterion"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.criterion.Order"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="mypkg.Student"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%
   
Session ses=mypkg.HibernateUtil.getSessionFactory().openSession();
//Query qr=ses.createQuery("from Student");
Criteria crt=ses.createCriteria(Student.class);
//Order ord=Order.desc("marks");
//crt.addOrder(ord);
 Criterion crt1=Restrictions.eq("marks", 68);
 crt.add(crt1);
List<Student> list=crt.list();
%>
<html>
    <body>
        <h1>Student List!</h1>
        <hr>
        <%
            for(Student s:list){
        %>
        <%= s.getRollno()+","+s.getSname()+","+s.getMarks()  %><br>
        <%
        }
        %>
        <hr>
    </body>
</html>
