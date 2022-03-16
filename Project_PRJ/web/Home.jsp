<%-- 
    Document   : Home
    Created on : Mar 12, 2022, 3:50:24 PM
    Author     : Thuong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/HomePage.css" rel="stylesheet" type="text/css"/>
        <title>HomePage</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merienda+One">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <link href="css/HomePage.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/cc64770667.js" crossorigin="anonymous"></script>
    </head>
      <body>
    <nav>
       
        <a href="#" class="logo">
            <img src="images/logo.png"/>
        </a>
       
        <input type="checkbox" class="menu-btn" id="menu-btn"/>
        <label class="menu-icon" for="menu-btn">    
            <span class="nav-icon"></span>
        </label>
        <ul class="menu">
            <c:if test="${sessionScope.acc.isAdmin==1}">
            <li><a href=""> Manager Account</a></li>
            </c:if>
            
            <c:if test="${sessionScope.acc.isSell==1}">
            <li><a href="ManagerFilm.jsp"> Manager Film</a></li>
            </c:if>
            
            <i class="fa-solid fa-seedling"></i>
            <li><a href="PhimDangChieu.jsp">Mua Vé</a></li>
            
            <c:if test="${sessionScope.acc==null}">
            <li>
                <a href="Login.jsp">Login/Singin</a>
            </li>
            </c:if>
            
            <c:if test="${sessionScope.acc!=null}">
            <li><a href="#">Hello ${sessionScope.acc.username}</a></li>
            <li><a href="Logout">Logout</a></li>
            </c:if>
            
        </ul>
        <div class="search">
            <input type="text" placeholder="Find Your Favorite Movies"/>
            <button type="submit">
                 <i class="fas fa-search"></i>
            </button>
        </div>
    </nav>
    <section id="main">
        <h1 class="showcase-heading">Showcase</h1>
        <ul id="autoWidth" class="cs-hidden">
        <li class="item-a">
           <div class="showcase-box">
               <img src="images/s-1.jpg"/>
           </div>
               </li>
            <li class="item-b">
               <div class="showcase-box">
                   <img src="images/s-2.jpg"/>
               </div>
                   </li>
            <li class="item-c">
               <div class="showcase-box">
                   <img src="images/s-3.jpg"/>
               </div>
                   </li>
               
            <li class="item-d">
               
               <div class="showcase-box">
                   <img src="images/s-4.jpg"/>
               </div>
                   </li>
            <li class="item-e">
                <!--showcase-box------------------->
               <div class="showcase-box">
                   <img src="images/s-5.png"/>
               </div>
                   </li>
          </ul>
    </section>
  
    <section id="latest">
        <h2 class="latest-heading">Latest Movies</h2>
        <ul id="autoWidth2" class="cs-hidden">
            <li class="item-a">
                <div class="latest-box">
                    <div class="latest-b-img">
                        <img src="images/m-1.jpg">
                    </div>
                    <div class="latest-b-text">
                        <strong>Kin 2018</strong>
                        <p>Action Movie</p>
                    </div>
                </div>
            </li>
   
    <li class="item-b">
        <div class="latest-box">
            <div class="latest-b-img">
                <img src="images/m-2.jpg">
            </div>
            <div class="latest-b-text">
                <strong>Kin 2018</strong>
                <p>Action Movie</p>
            </div>
        </div>
    </li>
    
    <li class="item-c">
        <div class="latest-box">
            <div class="latest-b-img">
                <img src="images/m-3.jpg">
            </div>
            <div class="latest-b-text">
                <strong>Kin 2018</strong>
                <p>Action Movie</p>
            </div>
        </div>
    </li>
    
    <li class="item-d">
        <div class="latest-box">
            <div class="latest-b-img">
                <img src="images/m-4.jpg">
            </div>
            <div class="latest-b-text">
                <strong>Kin 2018</strong>
                <p>Action Movie</p>
            </div>
        </div>
    </li>
    
    <li class="item-e">
        <div class="latest-box">
            <div class="latest-b-img">
                <img src="images/m-5.jpg">
            </div>
            <div class="latest-b-text">
                <strong>Kin 2018</strong>
                <p>Action Movie</p>
            </div>
        </div>
    </li>
  
    <li class="item-f">
        <div class="latest-box">
            
            <div class="latest-b-img">
                <img src="images/m-6.jpg">
            </div>
            
            <div class="latest-b-text">
                <strong>Kin 2018</strong>
                <p>Action Movie</p>
            </div>
        </div>
    </li>
    
    <li class="item-g">
        <div class="latest-box">
           
            <div class="latest-b-img">
                <img src="images/m-7.jpeg">
            </div>
           
            <div class="latest-b-text">
                <strong>Kin 2018</strong>
                <p>Action Movie</p>
            </div>
        </div>
    </li>
          </ul>
    </section>
    
    <div class="movies-heading">
        <h2>Movies</h2>
    </div>
    <section id="movies-list">
        
        <div class="movies-box">
           
            <div class="movies-img">
                <div class="quality">HDRip</div>
                <img src="images/l-1.jpg">
            </div>
            
            <a href="#">
                 Full Movie[In English] With English Subtitles | HDRip 1080p HD
            </a>
        </div>
        
         <div class="movies-box">
            
            <div class="movies-img">
                <div class="quality">HDRip</div>
                <img src="images/l-2.jpg">
            </div>
            
            <a href="#">
               Full Movie[In English] With English Subtitles | HDRip 1080p HD
            </a>
        </div>
         <!--box-3------------------------>
         <div class="movies-box">
            <!--img------------>
            <div class="movies-img">
                <div class="quality">HDRip</div>
                <img src="images/l-3.jpg">
            </div>
            <!--text--------->
            <a href="#">
                 Full Movie[In English] With English Subtitles | HDRip 1080p HD
            </a>
        </div>
      
         <div class="movies-box">
   
            <div class="movies-img">
                <div class="quality">HDRip</div>
                <img src="images/l-4.jpg">
            </div>
         
            <a href="#">
                Full Movie[In English] With English Subtitles | HDRip 1080p HD
            </a>
        </div>
  
         <div class="movies-box">
     
            <div class="movies-img">
                <div class="quality">HDRip</div>
                <img src="images/l-5.jpg">
            </div>
  
            <a href="#">
            Full Movie[In English] With English Subtitles | HDRip 1080p HD
            </a>
        </div>
  
         <div class="movies-box">
          
            <div class="movies-img">
                <div class="quality">HDRip</div>
                <img src="images/l-6.jpg">
            </div>
  
            <a href="#">
              Full Movie[In English] With English Subtitles | HDRip 1080p HD
            </a>
        </div>

         <div class="movies-box">
       
            <div class="movies-img">
                <div class="quality">HDRip</div>
                <img src="images/l-7.jpg">
            </div>
       
            <a href="#">
                Full Movie[In English] With English Subtitles | HDRip 1080p HD
            </a>
        </div>
       
         <div class="movies-box">
      
            <div class="movies-img">
                <div class="quality">HDRip</div>
                <img src="images/l-8.jpg">
            </div>
         
            <a href="#">
                Full Movie[In English] With English Subtitles | HDRip 1080p HD
            </a>
        </div>
    </section>

    <div class="btns">
        <a href="#">Previous</a>
        <a href="#">Next</a>
    </div>

    <footer>
        <p>ProJect PRJ </p>
        <p>Chu Minh Thương</p>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.4854095333817!2d105.52487025132929!3d21.013254993612865!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345b465a4e65fb%3A0xaae6040cfabe8fe!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBGUFQ!5e0!3m2!1svi!2s!4v1645764940610!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
    </footer>     
   <script src="https://kit.fontawesome.com/c8e4d183c2.js" crossorigin="anonymous"></script>

</body>
</html>
