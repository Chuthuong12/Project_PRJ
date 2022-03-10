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
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <link href="css/Phimsc2.css" rel="stylesheet" type="text/css"/>
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
            </nav>
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
        
    </body>
</html>
