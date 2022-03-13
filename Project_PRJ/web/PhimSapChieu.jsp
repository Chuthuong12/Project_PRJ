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
        <script src="https://kit.fontawesome.com/cc64770667.js" crossorigin="anonymous"></script>

    </head>
    <body>
        <nav>
            <ul class="menu">
                <a>
                    <i class="fa-solid fa-house"></i> </a>
                <li><a href="Home.jsp">Home</a></li>
                <!--<i class="fa-solid fa-seedling"></i>-->
<!--                <li><a href="PhimDangChieu.jsp">Phim Đang Chiếu</a></li>
                <i class="fa-solid fa-apple-whole"></i>-->
                <!--<li><a href="PhimSapChieu.jsp">Mua vé</a></li>-->
                <i class="fa-solid fa-user"></i>
                <li><a href="Login.jsp">Login/Singin</a></li>
            </ul>
        </nav>
      
        <!-- End MenuBar -->
        <!-- Content -->
        <div class="listMovie-content">
           
            <div class="search">
                <input type="text" placeholder="Phim Đang Chiếu"/>
                <i class="fas fa-search"></i>
            </div>
            <div class="borderBottom-title"></div>
            <div class="listMovie-content-list">
                <div class="row">
                    <%--<c:forEach items="${requestScopeList}" var="o">--%>
                    <div class="col-md-4">
                        <a href="">
                            <img src="images/l-8.jpg"  alt="" class="imgg"/>
                        </a>
                        <div class="movie-info">
                            <h4 class="mt-4"">Venom</h4>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Hành động</span></div>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>20/6/2021</span></div>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>111 phút</span></div>
                        </div>
                        <div class="movie-btn">
                            <button type="button" class="btn btn-danger mt-4">Mua Vé </button>
                            <button type="button" class="btn btn-outline-danger mt-4">Xem Chi Tiết</button>
                        </div>
                    </div>
                    <%--</c:forEach>--%>
                    <div class="col-md-4">
                        <a href="">
                            <img src="images/l-7.jpg" alt=""class="imgg"/>
                        </a>
                        <div class="movie-info">
                            <h4 class="mt-4"">Rouge One</h4>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Tâm lý</span></div>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>09/03/2022</span></div>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>122 phút</span></div>
                        </div>
                        <div class="movie-btn">
                            <button type="button" class="btn btn-danger mt-4" >Mua Vé </button>
                            <button type="button" class="btn btn-outline-danger mt-4">Xem Chi Tiết</button>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <a href="">
                            <img src="images/m-6.jpg" alt="" class="imgg"/>
                        </a>

                        <div class="movie-info">
                            <h4 class="mt-4">Star War</h4>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Khoa Học Viễn Tưởng</span></div>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>09/03/2022</span></div>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>133 phút</span></div>
                        </div>
                        <div class="movie-btn">
                            <button type="button" class="btn btn-danger mt-4">Mua Vé </button>
                            <button type="button" class="btn btn-outline-danger mt-4">Xem Chi Tiết</button>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <a href="">
                            <img src="images/l-5.jpg" alt="" class="imgg"/>
                        </a>
                        <div class="movie-info">
                            <h4 class="mt-4">CoCo</h4>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Hoạt Hình</span></div>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>09/03/2022</span></div>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>90 phút</span></div>
                        </div>
                        <div class="movie-btn">
                            <button type="button" class="btn btn-danger">Mua Vé </button>
                            <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <a href="">
                            <img src="images/1-11.jpg" alt="" class="imgg"/>
                        </a>
                        <div class="movie-info">
                            <h4>BatMan</h4>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Hành Động</span></div>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>09/09/2022</span></div>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>134 phút</span></div>
                        </div>
                        <div class="movie-btn">
                            <button type="button" class="btn btn-danger">Mua Vé </button>
                            <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <a href="">
                            <img src="images/l-1.jpg" alt="" class="imgg"/>
                        </a>
                        <div class="movie-info">
                            <h4>Into Darkness</h4>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Tâm lý</span></div>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>12/06/2022</span></div>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>144 phút</span></div>
                        </div>
                        <div class="movie-btn">
                            <button type="button" class="btn btn-danger">Mua Vé </button>
                            <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <a href="">
                            <img src="images/l-2.jpg" alt="" class="imgg"/>
                        </a>
                        <div class="movie-info">
                            <h4>Fantastic Beasts</h4>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Tâm lý</span></div>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>02/05/2022</span></div>
                            <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>155 phút</span></div>
                        </div>
                        <div class="movie-btn">
                            <button type="button" class="btn btn-danger">Mua Vé </button>
                            <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                        </div>
                    </div>
                    <%--</c:forEach>--%>
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
