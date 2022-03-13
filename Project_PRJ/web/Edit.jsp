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
    </head>
    <body>
       
      <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">

                    </div>
                </div>
       
                    </thead>
                    <table>
                         <div class="">					
                            <div class="form-group">
                                <label>movieTitle</label>
                                <input name="movieTitle" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>releaseDate</label>
                                <input name="releaseDate" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>price</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>image</label>
                                <textarea name="img" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>genereName</label>
                                <textarea name="genereName" class="form-control" required></textarea>
                            </div>
<!--                            <div class="form-group">
                                <label>directorID</label>
                                <textarea name="directorID" class="form-control" required></textarea>
                            </div>-->
                            <div class="form-group">
                                <label>Thời gian</label>
                                <textarea name="time" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <!--<label>AAA</label>-->
<!--                                <select name="category" class="form-select" aria-label="Default select example">
                                    
                                </select>-->
                            </div>

                        </div>  
                    </table>
                    
                    <div>
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                    </div>
        <script src="js/manager.js" type="text/javascript"></script>

    </body>
</html>
