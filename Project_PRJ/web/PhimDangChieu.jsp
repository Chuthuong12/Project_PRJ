<%-- 
    Document   : PhimDangChieu
    Created on : Mar 4, 2022, 10:13:09 PM
    Author     : Thuong
--%>

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
         <link href="css/PhimSC.css" rel="stylesheet" type="text/css"/>
        <link href="css/Phimsc2.css" rel="stylesheet" type="text/css"/>
        <link href="css/HomePage.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
                <script src="https://kit.fontawesome.com/cc64770667.js" crossorigin="anonymous"></script>

    </head>
   <body>
        <nav>
         <ul class="menu">
             <i class="fa-solid fa-house"></i>
            <li><a href="HomePage.jsp">Home</a></li>
           <i class="fa-solid fa-seedling"></i>
            <li><a href="PhimDangChieu.jsp">Phim Đang Chiếu</a></li>
            <i class="fa-solid fa-apple-whole"></i>
            <li><a href="PhimSapChieu.jsp">Phim Sắp Chiếu</a></li>
            <i class="fa-solid fa-user"></i>
            <li><a href="Login.jsp">Login/Singin</a></li>
        </ul>
            </nav>
            <div class="menubar">
                <ul>
                <a href="">
                    <!--<img src="images/fav icon.png" alt=""/>-->
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
       
             <!--End MenuBar--> 
            <!-- Content -->
            <div class="listMovie-content">
                <h2 class="listMovie-content-title">
                    Phim Đang Chiếu
                </h2>
                 <div class="search">
                <input type="text" placeholder="Find Your Favorite Movies"/>
                <i class="fas fa-search"></i>
            </div>
                         <div class="borderBottom-title"></div>
                <div class="listMovie-content-list">
                    <div class="row">
                        <div class="col-md-4">
                            <a href="">
                                <img src="images/DC1.jpg" alt=""class="imgg"/>
                            </a>
                            <div class="movie-info">
                                <h4>Furious 9</h4>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Hành động</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>23/04/2022</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>111 phút</span></div>
                            </div>
                            <div class="movie-btn">
                                <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <a href="">
                                <img src="images/dc2.jpg" alt=""class="imgg"/>
                            </a>
                           
                            <div class="movie-info">
                                <h4>One Pice</h4>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Hoạt hình</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>09/03/2022</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>122 phút</span></div>
                            </div>
                            <div class="movie-btn">
                                <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <a href="">
                                <img src="images/dc3.jpg" alt="" class="imgg"/>
                            </a>

                            <div class="movie-info">
                                <h4>Sát thủ thợ máys</h4>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Hành động</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>09/05/2022</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>133 phút</span></div>
                            </div>
                            <div class="movie-btn">
                                <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <a href="">
                                <img src="images/DC4.jpg" alt="" class="imgg"/>
                            </a>
                            <div class="movie-info">
                                <h4>The Flash</h4>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Hành Động</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>11/06/2022</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>90 phút</span></div>
                            </div>
                            <div class="movie-btn">
                                <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <a href="">
                                <img src="images/DC5.jpg" alt="" class="imgg"/>
                            </a>
                            <div class="movie-info">
                                <h4>Sniper</h4>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Hành Động</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>13/07/2022</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>134 phút</span></div>
                            </div>
                            <div class="movie-btn">
                                <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <a href="">
                                <img src="images/Dc6.jpg" alt="" class="imgg"/>
                            </a>
                            <div class="movie-info">
                                <h4>Lính Bắn Tỉa</h4>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>hành Động</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>12/06/2022</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>144 phút</span></div>
                            </div>
                            <div class="movie-btn">
                                <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <a href="">
                                <img src="images/DC7.jpg" alt="" class="imgg"/>
                            </a>
                            <div class="movie-info">
                                <h4>War </h4>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Hành Động</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>21/03/2022</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>155 phút</span></div>
                            </div>
                            <div class="movie-btn">
                                <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <a href="">
                                <img src="images/DC8.jpg" alt="" class="imgg"/>
                            </a>
                            <div class="movie-info">
                                <h4>Bố Già </h4>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>Hài Kịch</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>22/03/2022</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>155 phút</span></div>
                            </div>
                            <div class="movie-btn">
                                <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <a href="">
                                <img src="images/DC9.jpg" alt="" class="imgg"/>
                            </a>
                            <div class="movie-info">
                                <h4>Dracula </h4>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thể Loại:</span> <span>hành Động</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Khởi Chiếu:</span> <span>21/03/2022</span></div>
                                <div class="movie-detail-content-info"><span class="movie-detail-content-info-detail">Thời Lượng:</span> <span>155 phút</span></div>
                            </div>
                            <div class="movie-btn">
                                <button type="button" class="btn btn-outline-danger">Xem Chi Tiết</button>
                            </div>
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
