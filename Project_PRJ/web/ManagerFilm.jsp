<%-- 
    Document   : ManagerFilm
    Created on : Mar 13, 2022, 12:44:49 PM
    Author     : Thuong
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager Film</title>
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
            <style>
            img{
                width: 200px;
                height: 120px;
                }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Manage <b>Film</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href=#addEmployeeModal  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Film</span></a>
                            <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>						
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>MovieID</th>
                            <th>MovieTitle</th>
                            <th>ReleaseDate</th>
                            <th>price</th>
                            <th>img</th>
                            <th>Time</th>
                            <th>GenereName</th>
                            <th>DirectorID</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${o.allMovie}" var="i">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${i.movieID}</td>
                                <td>${i.movieTitle}</td>
                                <td>${i.releaseDate}</td>
                                <td>${i.price} $</td>
                                <td>
                                    <img src="${i.img}">
                                </td>
                                
                                <td>${i.time}</td>
                                <td>${i.genereName}</td>
                                <td>${i.directorID}</td>
                               
                                <td>
                                    <a href="LoadFilm?pid=${i.movieID}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="Delete?pid=${i.movieID}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="clearfix">
                    <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                    <ul class="pagination">
                        <li class="page-item disabled"><a href="#">Previous</a></li>
                        <li class="page-item"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item active"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">Next</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="add" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Film</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>MovieID</label>
                                <input  name="MovieID" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>movieTitle</label>
                                <input name="MovieTitle" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>releaseDate</label>
                                <input name="ReleaseDate" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>price</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label>image</label>
                                <input name="img" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Thời gian</label>
                                <input name="time" type="text" class="form-control" required>
                            </div>
                          
                            <div class="form-group">
                                <label>genereName</label>
                                <input name="GenereName" type="text" class="form-control" required>
                            </div>
                          
                            <div class="form-group">
                                <label>directorID</label>
                                <input name="GirectorID" type="text" class="form-control" required>
                            </div>
                          

<!--                           
                             <div class="form-group">
                                <label>genereName</label>
                                <textarea name="genereName" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>directorID</label>
                                <textarea name="directorID" class="form-control" required></textarea>
                            </div>-->
                            <div class="form-group">
                                <!--<label>AAA</label>-->
<!--                                <select name="category" class="form-select" aria-label="Default select example">
                                    
                                </select>-->
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="edit" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                       <c:forEach items="${ListM}" var="i">
                      
                        <div class="modal-body"  >					
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
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-info" value="Save">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Delete Modal HTML -->
        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Delete Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <p>Are you sure you want to delete these Records?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" value="Delete">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="js/manager.js" type="text/javascript"></script>
        <script>
               
        </script>
    </body>
</html>
