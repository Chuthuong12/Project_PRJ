<%-- 
    Document   : Edit
    Created on : Mar 13, 2022, 6:34:52 PM
    Author     : Thuong
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit</title>
         <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <jsp:useBean id="o" class="dao.DAO" scope="request"></jsp:useBean>
        <%
            String id1 = (String)request.getAttribute("id");
        %>
    </head>
    <body>
<!--        <nav style="background-color: rgb(135,206,235)">
           <h1 style="margin-left: 770px;background-color: #ddd; margin-right: 1000px; font-size: 50px"> <b>Edit </b></h1>
           <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        </nav>-->
         <form action="edit" method="post">
         <div class="modal-header">						
         <h4 class="modal-title">Add Film</h4>
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                    <table >
                    <c:forEach items="${ListM}" var="i">
                      
                        <div class="modal-body" style="margin-right: 700px; margin-left: 700px;" >					
                            <div class="form-group">
                                <label>MovieID</label>
                                <input value="${i.movieID}" type="MovieID" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>movieTitle</label>
                                <input value="${i.movieTitle}" type="movieTitle" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>releaseDate</label>
                                <input value="${i.releaseDate}" name="ReleaseDate" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>price</label>
                                <input value="${i.price}" name="price" type="text" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label>image</label>
                                <input value="${i.img}" name="img" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Thời gian</label>
                                <input value="${i.time}" name="time" type="text" class="form-control" required>
                            </div>
                          
                            <div class="form-group">
                                <label>genereName</label>
                                <input value="${i.genereName}" name="GenereName" type="text" class="form-control" required>
                            </div>
                          
                            <div class="form-group">
                                <label>directorID</label>
                                <input value="${i.directorID}" name="GirectorID" type="text" class="form-control" required>
                            </div>					
                        </div>
                    </c:forEach>
                    </table>
        <div style="margin-right: 750px; margin-left: 790px;">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Save">
                    </div>
        <script src="js/manager.js" type="text/javascript"></script>
        
    </body>
</html>
