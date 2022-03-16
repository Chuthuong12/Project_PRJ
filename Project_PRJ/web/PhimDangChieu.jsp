<%-- 
    Document   : PhimDangChieu
    Created on : Mar 4, 2022, 10:13:09 PM
    Author     : Thuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PhimDangChieu</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merienda+One">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
         <!--<link href="css/PhimSC.css" rel="stylesheet" type="text/css"/>-->
        <link href="css/Phimsc2.css" rel="stylesheet" type="text/css"/>
        <link href="css/HomePage.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/cc64770667.js" crossorigin="anonymous"></script>
        <jsp:useBean id="o" class="dao.DAO" scope="request"></jsp:useBean>
    </head>
   <body>
        <nav>
         <ul class="menu">
             <i class="fa-solid fa-house"></i>
            <li><a href="Home.jsp">Home</a></li>
<!--            <i class="fa-solid fa-seedling"></i>
            <li><a href="PhimSapChieu.jsp">Mua Vé</a></li>-->
            <c:if test="${sessionScope.acc==null}">
            <li><a href="Login.jsp">Login/Singin</a></li>
            </c:if>
            
            <c:if test="${sessionScope.acc!=null}">
                <li><a href="#">Hello <b>${sessionScope.acc.username}</b></a></li>
            <li><a href="Logout">Logout</a></li>
            </c:if>
        </ul>
            </nav>
         
                <hr>
                </div>
       
             <!--End MenuBar--> 
            <!-- Content -->
            <div class="listMovie-content">
                <h1 class="listMovie-content-title">
                <div class="menubar">
                <br>
                <a href="#">Link 1</a>
                <a href="#">Link 2</a>
                <a href="#">Link 3</a>
                <a href="#">Link 4</a>
                </div>
                </h1>
                
                    <form action="Search" method="post" class="form-inline my-2 my-lg-0">
                        <div class="input-group input-group-sm">
                            <input name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-secondary btn-number">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </div>
                        <a class="btn btn-success btn-sm ml-3" href="show">
                            <i class="fa fa-shopping-cart"></i> Buy
                            <span class="badge badge-light"></span>
                        </a>
                    </form>
                
            </div>
                <div class="borderBottom-title"></div>
                <div class="listMovie-content-list">
                    <div class="col-sm-9">
                    <div class="row">
                    <c:forEach items="${o.allMovie}" var="i">
                            <div class="col-12 col-md-6 col-lg-3 mt-4">
                                <div class="card">
                                    <img style="height: 300px; width: 300px;" class="card-img-top" src="${i.img}" alt="Thêm Ảnh">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="#" title="View Product"><span>Tên phim: </span> ${i.movieTitle}</a> </h4>
                                        <div class="card-text show_txt"><span>Ngày Mở Bán</span> <span>${i.releaseDate}</span> </div>
                                        <div class="card-text show_txt"><span>Thể Loại</span> <span>${i.genereName}</span> </div>
                                        <div class="card-text show_txt "><span>Thời Lượng:</span> <span>${i.time}</span> <span>Phút</span></div>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-danger btn-block mt-4"> <span> Giá: </span>${i.price} $</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                </div>
            </div>

            <!-- End Content 
              Footer -->
            <div class="footer">
                <div class="footer-theater">
                    <ul>
                        <a href="">
                            <!--<img src="images/s-1.jpg" alt="" class="imgg"/>-->

                        </a>
                        <a href="">
                            <img src="../img/2.png" alt="">
                        </a>
                        <a href="">
                            <img src="../img/5.png" alt="">
                        </a>
                        <a href="">
                            <img src="../img/6.png" alt="">
                        </a>
                        <a href="">
                            <img src="../img/7.png" alt="">
                        </a>
                        <a href="">
                            <img src="../img/9.png" alt="">
                        </a>
                        <a href="">
                            <img src="../img/8.png" alt="">
                        </a>
                        <a href="">
                            <img src="../img/10.png" alt="">
                        </a>
                        <a href="">
                            <img src="../img/11.png" alt="">
                        </a>
                    </ul>
                </div>
                <div class="footer-info">
                    <div class="row">
                        <div class="col-md-4">
                            <a href="https://fap.fpt.edu.vn/">
                                <img src="" alt="">
                            </a>
                        </div>
                        <div class="col-md-8">
                            <h4>ProJect PRJ</h4>
                            <div>Liên Hệ: Chu Minh Thương, email: Thuongcmhe153150@fpt.edu.vn .</div>
                            <div>Điện thoại: 033 440 2001</div>
                        </div>
                    </div>
                </div>
                <div class="footer-end">
                </div>
            </div>

            <script src="https://kit.fontawesome.com/c8e4d183c2.js" crossorigin="anonymous"></script>
    </body
</html>
