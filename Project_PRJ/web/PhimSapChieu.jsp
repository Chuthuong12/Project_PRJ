<%-- 
    Document   : HomePage2
    Created on : Mar 4, 2022, 10:04:23 PM
    Author     : Thuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Phim Sắp chiếu</title>
        <link href="css/PhimSC.css" rel="stylesheet" type="text/css"/>
        <link href="css/Phimsc2.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merienda+One">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <nav>

            <ul class="menu">
                <li><a href="HomePage.jsp">Home</a></li>
                <li><a href="PhimDangChieu.jsp">Phim Đang Chiếu</a></li>
                <li><a href="PhimSapChieu.jsp">Phim Sắp Chiếu</a></li>
                <li><a href="Login.jsp">Login/Singin</a></li>
            </ul>


            <div class="menubar">
                <ul>
                    <a href="">
                        <img src="../img/header-logo-1.png" alt="">
                    </a>
                    <a href="listMovie.html">
                        <img src="../img/header-logo-2.png" alt="">
                    </a>
                    <a href="">
                        <img src="../img/header-logo-3.png" alt="">
                    </a>
                    <a href="">
                        <img src="../img/header-logo-4.png" alt="">
                    </a>
                    <a href="">
                        <img src="../img/header-logo-5.png" alt="">
                    </a>
                    <a href="">
                        <img src="../img/header-logo-6.png" alt="">
                    </a>
                    <a href="">
                        <img src="../img/header-logo-7.png" alt="">
                    </a>
                </ul>
                <hr>
            </div>
            <!-- End MenuBar -->
            <!-- Content -->
            <div class="listMovie-content">
                <h2 class="listMovie-content-title">
                    Phim Đang Chiếu
                </h2>
                <div class="borderBottom-title"></div>
                <div class="listMovie-content-list">
                    <div class="row">
                        <%--<c:forEach items="${Listp}" var="o">--%>
                        <div class="col-md-4">
                            <a href="">
                                
                                <img src="images/l-8.jpg"  alt="" class="imgg"/>
                                <!--<img src="${o.image}"  alt="" class="imgg"/>-->
                            </a>
                            <div class="movie-info">
                                <h4>Venom</h4>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Hành Động</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>17/03/2022</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>134 phút</span></div>
                            </div>
                            <div class="movie-btn">
                                <button type="button" class="btn btn-danger">Mua Vé </button>
                                <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                            </div>
                        </div>
                         
                        <div class="col-md-4">
                            <a href="">
                         
                                <img src="images/l-7.jpg" alt=""class="imgg"/>
                            </a>
                            <div class="movie-info">
                                <h4>One Piece - Khai Màn</h4>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Tâm lý</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>17/02/2020</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>134 phút</span></div>
                            </div>
                            <div class="movie-btn">
                                <button type="button" class="btn btn-danger">Mua Vé </button>
                                <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <a href="">
                                <img src="images/m-6.jpg" alt="" class="imgg"/>
                            </a>
                          
                            <div class="movie-info">
                                <h4>One Piece - Khai Màn</h4>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Tâm lý</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>17/02/2020</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>134 phút</span></div>
                            </div>
                            <div class="movie-btn">
                                <button type="button" class="btn btn-danger">Mua Vé </button>
                                <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <a href="">
                                <img src="images/l-5.jpg" alt="" class="imgg"/>
                            </a>
                            <div class="movie-info">
                                <h4>One Piece - Khai Màn</h4>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Tâm lý</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>17/02/2020</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>134 phút</span></div>
                            </div>
                            <div class="movie-btn">
                                <button type="button" class="btn btn-danger">Mua Vé </button>
                                <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <a href="">
                                <img src="images/l-4.jpg" alt="" class="imgg"/>
                            </a>
                            <div class="movie-info">
                                <h4>One Piece - Khai Màn</h4>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Tâm lý</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>17/02/2020</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>134 phút</span></div>
                            </div>
                            <div class="movie-btn">
                                <button type="button" class="btn btn-danger">Mua Vé </button>
                                <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <a href="">
                                <img src="images/l-3.jpg" alt="" class="imgg"/>
                            </a>
                            <div class="movie-info">
                                <h4>One Piece - Khai Màn</h4>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Tâm lý</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>17/02/2020</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>134 phút</span></div>
                            </div>
                            <div class="movie-btn">
                                <button type="button" class="btn btn-danger">Mua Vé </button>
                                <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                            </div>
                        </div>
                        <div class="col-md-4">
<!--                            <a href="">
                                <img src="images/l-2.jpg" alt="" class="imgg"/>
                            </a>
                            <div class="movie-info">
                                <h4>One Piece - Khai Màn</h4>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Tâm lý</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>17/02/2020</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>134 phút</span></div>
                            </div>
                            <div class="movie-btn">
                                <button type="button" class="btn btn-danger">Mua Vé </button>
                                <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                            </div>-->
                        </div>
                    <%--</c:forEach>--%>
                    </div>
                </div>
            </div>
            <!-- End Content -->
            
            <!-- Footer -->
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
                        <div class="col-md-2">
                            <a href="https://fap.fpt.edu.vn/">
                                <img src="" alt="">
                            </a>
                        </div>
                        <div class="col-md-10">
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
    </body>
</html>
